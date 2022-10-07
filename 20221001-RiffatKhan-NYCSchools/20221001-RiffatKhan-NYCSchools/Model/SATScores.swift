//
//  SATScores.swift
//  20221001-RiffatKhan-NYCSchools
//
//  Created by Riffat Khan on 10/2/22.
//

import UIKit

struct SchoolDatum: Codable {
    
    let mathScore, writingScore, readingScore, dbn, schoolName, numOfSatTestTakers : String
    
    enum CodingKeys: String, CodingKey {
        case dbn
        case schoolName = "school_name"
        case numOfSatTestTakers = "num_of_sat_test_takers"
        case mathScore = "sat_math_avg_score"
        case readingScore = "sat_critical_reading_avg_score"
        case writingScore = "sat_writing_avg_score"
    }
}

