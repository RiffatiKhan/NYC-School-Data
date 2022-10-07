//
//  ScholasticAssessmentTestViewController.swift
//  20221001-RiffatKhan-NYCSchools
//
//  Created by Riffat Khan on 10/2/22.
//

import UIKit

class ScholasticAssessmentTestViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var schoolName: String = ""
    var url = URL(string: "https://data.cityofnewyork.us/resource/f9bf-2cp4.json")
    var scholasticAssesmentTestScores: [SchoolDatum] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkLayer.gettingData(url: url, expecting: [SchoolDatum].self) { [self] data in
            switch data {
            case .success(let satInformation):
                self.scholasticAssesmentTestScores = satInformation
                tableView.reloadData()
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

