//
//  MapViewController.swift
//  WeatherApp
//
//  Created by Steeve Randriamampianina on 22/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class MapViewController: UIViewController, MKMapViewDelegate, UITableViewDataSource{
    
    
    var city: [City] = CitiesData.list
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var ListView: UITableView!
    
    @IBAction func toList(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            mapView.isHidden = false
            ListView.isHidden = true
            return
        } else {
            mapView.isHidden = true
            ListView.isHidden = false
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        ListView.dataSource = self
        for city in CitiesData.list{
            let pin = MKPointAnnotation()
            pin.coordinate = city.coordinates
            pin.title = city.name
            mapView.addAnnotation(pin)
        }
    }


    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {

        let annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pin")

        annotationView.canShowCallout = true // Add this line in your code
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        if let annotation = view.annotation as? MKPointAnnotation {
            performSegue(withIdentifier: "DetailsSegue", sender: annotation)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailsSegue"{
            if let DetailsVC = segue.destination as? DetailsViewController{
                mapView.deselectAnnotation(sender as? MKAnnotation, animated: true)
                DetailsVC.dataReceived = sender as? MKPointAnnotation
            }
        } else {
            if segue.identifier == "ListSegue" {
                if let DetailsVC = segue.destination as? DetailsViewController,
                    let selectedCity = ListView.indexPathForSelectedRow{
                    let dataToSend = MKPointAnnotation()
                    dataToSend.coordinate = city[selectedCity.row].coordinates
                    dataToSend.title = city[selectedCity.row].name
                    DetailsVC.dataReceived = dataToSend
                    ListView.deselectRow(at: selectedCity, animated: false)
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = ListView.dequeueReusableCell(withIdentifier: "CitiesData", for: indexPath) as? CitiesListCell{
            cell.configure(Name: city[indexPath.row].name)
            return cell
        }
        return UITableViewCell()
    }
    
}

