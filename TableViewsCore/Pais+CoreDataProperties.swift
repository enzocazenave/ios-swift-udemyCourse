//
//  Pais+CoreDataProperties.swift
//  TableViews
//
//  Created by Enzo Cazenave on 19/06/2022.
//  Copyright © 2022 MoureDev. All rights reserved.
//
//

import Foundation
import CoreData


extension Pais {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pais> {
        return NSFetchRequest<Pais>(entityName: "Pais")
    }

    @NSManaged public var nombre: String?

}

extension Pais : Identifiable {

}
