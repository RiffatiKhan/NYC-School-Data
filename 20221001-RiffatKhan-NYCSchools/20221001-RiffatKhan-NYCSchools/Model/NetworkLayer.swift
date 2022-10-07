//
//  NetworkLayer.swift
//  20221001-RiffatKhan-NYCSchools
//
//  Created by Riffat Khan on 10/1/22.
//

import UIKit

class NetworkLayer {
    
    static func gettingData<genericType: Codable>(url: URL?,expecting: genericType.Type, completion: @escaping (Result<genericType, Error>) ->() ) {
        guard let url = url else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data {
                do {
                    let decodedData = try JSONDecoder().decode(expecting.self, from: data)
                    DispatchQueue.main.async {
                        completion(.success(decodedData))
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}
