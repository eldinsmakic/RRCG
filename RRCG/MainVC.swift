//
//  MainVC.swift
//  RRCG
//
//  Created by eldin smakic on 16/04/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    let fetchCode: FetchCodeFile
    let codeGenerator: CodeGenerator
    @IBOutlet weak var precodeTextField: UITextField!

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.fetchCode = FetchCodeFile(fileName: "ressources/data")
        self.codeGenerator = CodeGenerator(fetchCode: self.fetchCode)
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder: NSCoder) {
        self.fetchCode = FetchCodeFile(fileName: "ressources/data")
        self.codeGenerator = CodeGenerator(fetchCode: self.fetchCode)
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onClickValidate(_ sender: Any) {
        var precode = precodeTextField.text!
        if codeGenerator.isAPrecode(precode: precode)
        {
            precode = codeGenerator.purrifyPrecode(precode: precode)
            let code = codeGenerator.generateCodeFromPrecode(precode)
            showCodeGenerated(code: code)
        }
        else
        {
            showErrorMessage()
        }

    }

    func showCodeGenerated(code: String)
    {
        let message = "your Code :" + code
        let alert = self.constructAlertMessage(title: "RRCG Code", message: message)
        self.present(alert, animated: true)
    }

    func showErrorMessage()
    {
        let message = "Bad precode"
        let alert = self.constructAlertMessage(title: "RRCG Error", message: message)
        self.present(alert, animated: true)
    }

    func constructAlertMessage(title: String,message: String) -> UIAlertController
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        return alert
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
