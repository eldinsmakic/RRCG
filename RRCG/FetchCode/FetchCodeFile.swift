//
//  FetchCodeFile.swift
//  RRCG
//
//  Created by eldin smakic on 16/04/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import Foundation

/// FetchCodeFile gather data from a file, data of type [code]
class FetchCodeFile: FetchCode
{
    let fileName: String

    /// param filename: file to gather data
    init(fileName: String)
    {
        self.fileName = fileName
    }

    /// Gather data from a file
    func getData() -> [Code] {
       if let url = Bundle.main.url(forResource: self.fileName, withExtension: "json") {
           do
           {
               let data = try Data(contentsOf: url)
               let decoder = JSONDecoder()
               let jsonData: [Code] = try decoder.decode([Code].self, from: data)
               return jsonData
           } catch {
               print("error:\(error)")
               return [Code]()
           }
       }
       return [Code]()
    }

}
