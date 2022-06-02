//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Enzo Cazenave on 01/06/2022.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myFakeView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My view controller"
        
        myWebView.load(URLRequest(url: URL(string: "https://google.com")!))
        myMap.centerCoordinate = CLLocationCoordinate2D(latitude: -38.416097, longitude: -63.616672)
    }


    @IBAction func myButtonAction(_ sender: Any) {
        myFakeView.isHidden = true
    }
}

