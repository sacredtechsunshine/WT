//
//  MapViewController.swift
//  WT
//
//  Created by April on 9/11/25.
//

import UIKit
import MapKit



class MapViewController: UIViewController {
    
    var mapView: MKMapView!
        override func loadView() {
            // Create a map view
            mapView = MKMapView()
            // Set it as *the* view of this view controller
            view = mapView
            
            
            // segmented controls
            let segmentedControl
                        = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
                segmentedControl.backgroundColor
                        = UIColor.white.withAlphaComponent(0.5)
                segmentedControl.selectedSegmentIndex = 0
                segmentedControl.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview(segmentedControl)
            
            // define constraints
            let topConstraint
                    = segmentedControl.topAnchor.constraint(equalTo: view.topAnchor)
            let leadingConstraint
                    = segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor)
            let trailingConstraint
                    = segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
            // activate constraints
            topConstraint.isActive = true
            leadingConstraint.isActive = true
            trailingConstraint.isActive = true

        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("MapViewController loaded it's view.")
    }
}
