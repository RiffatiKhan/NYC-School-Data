//
//  _ScholasticAssesmentTest.swift
//  20221001-RiffatKhan-NYCSchools
//
//  Created by Riffat Khan on 10/2/22.
//

import Foundation
import UIKit

extension ScholasticAssessmentTestViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        ScholasticAssessmentTestScoresTableViewCell
       
//        find the index of School name in second api according to first one
        let index = scholasticAssesmentTestScores.firstIndex(where: { $0.schoolName == schoolName })
        
        guard let index = index else {
            return UITableViewCell()
        }
            cell.schoolName.text = schoolName
            cell.dbnLabel.text = scholasticAssesmentTestScores[index].dbn
            cell.numberOfSatTakers.text = scholasticAssesmentTestScores[index].numOfSatTestTakers
            cell.mathScores.text = scholasticAssesmentTestScores[index].mathScore
            cell.readingScores.text = scholasticAssesmentTestScores[index].readingScore
            cell.writingScores.text = scholasticAssesmentTestScores[index].writingScore
    
        return cell
    }
}

