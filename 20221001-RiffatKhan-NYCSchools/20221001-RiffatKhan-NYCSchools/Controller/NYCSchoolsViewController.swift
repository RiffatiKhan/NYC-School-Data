//
//  ViewController.swift
//  20221001-RiffatKhan-NYCSchools
//
//  Created by Riffat Khan on 10/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json")
    var schoolData: [NYCSchoolDataModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkLayer.gettingData(url: url, expecting: [NYCSchoolDataModel].self) { [self] data in
            switch data {
            case .success(let schoolInformation):
                self.schoolData = schoolInformation
                self.tableView.reloadData()
                
            case.failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
