//
//  ExtensionViewController.swift
//  20221001-RiffatKhan-NYCSchools
//
//  Created by Riffat Khan on 10/2/22.
//

import Foundation
import UIKit


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return schoolData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NYCShoolsTableViewCell
        
        cell.schoolNameLabel.text = "\(indexPath.row + 1):  \(String(describing: schoolData[indexPath.row].school_name))"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyBoard = UIStoryboard(name: "ScholasticAssessmentTestScores", bundle: nil)
        let nextVc = (storyBoard.instantiateViewController(withIdentifier: MyViewController.SATViewComtroller.rawValue) as? ScholasticAssessmentTestViewController)!
        
        nextVc.schoolName = String(schoolData[indexPath.row].school_name.uppercased())
        
        navigationController?.pushViewController(nextVc, animated: true)
    }
    
}
