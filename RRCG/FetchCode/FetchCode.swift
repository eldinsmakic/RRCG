//
//  FetchCode.swift
//  RRCG
//
//  Created by eldin smakic on 16/04/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import Foundation

/// FetchCode give CodeGenerator
/// data [Code] that CodeGenerator can create Code from it
protocol FetchCode
{
    func getData() -> [Code]
}

struct Code: Decodable
{
    let precode: String
    let code: String

}
