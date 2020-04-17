//
//  CodeGenerator.swift
//  RRCG
//
//  Created by eldin smakic on 16/04/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import Foundation

class CodeGenerator
{
    let codeDataFetch: FetchCode
    let codes: [Code]

    init(fetchCode: FetchCode)
    {
        self.codeDataFetch = fetchCode
        self.codes = self.codeDataFetch.getData()
    }

    func isAPrecode(precode: String) -> Bool
    {
         let range = NSRange(location: 0, length: precode.count)
         do
         {
             let regex = try NSRegularExpression(pattern: "^\\s*[A-Za-z][0-9]{3}\\s*$")
            return regex.firstMatch(in: precode, options: [], range: range) != nil
         } catch
         {
             return false
         }
    }

    func generateCodeFromPrecode(_ precode: String) -> String
    {
        let length = codes.count
        var indicePrecode = 0
        var codeNotFind = true

        while codeNotFind && indicePrecode < length
        {
            if codes[indicePrecode].precode == precode
            {
                codeNotFind = false
            }
                indicePrecode += 1
        }
        indicePrecode -= 1
        return codeNotFind ?  "" : codes[indicePrecode].code
    }
}
