
import SwiftUI

final class ProgrammersModelData: ObservableObject {
    @Published var programmers = [
        Programmer(id: 0, name: "Enzo Cazenave", languages: "Swift, Python y Lua", avatar: Image(systemName: "person.fill"), favorite: true),
        Programmer(id: 1, name: "Ana", languages: "Java, Python y Lua", avatar: Image(systemName: "person.fill"), favorite: false),
        Programmer(id: 2, name: "Pablo", languages: "Lua", avatar: Image(systemName: "person.fill"), favorite: false),
        Programmer(id: 3, name: "Carlos", languages: "Python", avatar: Image(systemName: "person.fill"), favorite: true),
        Programmer(id: 4, name: "Patricio", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: false)
    ]
}

struct ListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    @State private var showFavorites = false
    
    private var filteredProgrammers: [Programmer] {
        return programmersModelData.programmers.filter { programmer in
            return !showFavorites || programmer.favorite
        }
    }
    

    var body: some View {
        NavigationView {
            VStack {
                
                Toggle(isOn: $showFavorites) {
                    Text("Mostrar favoritos")
                }.padding()
                
                List(filteredProgrammers, id: \.id) { programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].favorite)) {
                        RowView(programmer: programmer)
                    }
                }
            }
            .navigationTitle("Programmers")
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersModelData())
    }
}
