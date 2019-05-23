//
//  DetailsViewController.swift
//  WeatherApp
//
//  Created by Steeve Randriamampianina on 22/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import UIKit
import MapKit

class DetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var dataReceived: MKPointAnnotation?
    var city: CityDetails? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = dataReceived?.title ?? ""
        self.tableView.delegate  =  self
        self.tableView.dataSource = self
        request()
        //print(self.city)
        
    }
    
    func request() {
        APIHandler.requestWeather(coordinates: dataReceived?.coordinate, success: { (data) in
            let decoder = JSONDecoder()
            self.city = (try? decoder.decode(CityDetails.self, from: data))
            self.tableView.reloadData()
        }) { (error) in
            print(error)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1 + (city?.daily?.data?.count ?? 0)
        case 2:
            return 1 + (city?.daily?.data?.count ?? 0)
        case 3:
            return 1 + (city?.daily?.data?.count ?? 0)
        case 4:
            return 1 + (city?.daily?.data?.count ?? 0)
        case 5:
            return 1 + (city?.daily?.data?.count ?? 0)
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "mainID", for: indexPath) as? HourlyDetailCell {
//            cell.configure(withCity: (city?.hourly?.data?[indexPath.row]))
//            return cell
//        }
        return UITableViewCell()
        //cell.configure(city?.hourly?.data[indexPath.row])
    }
    

}
