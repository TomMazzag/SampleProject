//
//  ViewController.swift
//  SampleProject
//
//  Created by Thomas Mazzag on 30/04/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Next: UIButton!
    @IBOutlet var butName: UILabel!
    @IBOutlet weak var nameE: UITextField!
    
    var finalN: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Next.tintColor = .green
        nameE.delegate = self
        
    }
    
    @IBAction func Sub(_ sender: Any) {
            
        butName.text = (nameE.text)
        finalN = (nameE.text!)
        print (finalN)
        
        }
    

// Makes text box opened for name input hide when user clicks away
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameE.resignFirstResponder()
    }
    
}

// Makes text box opened for name input hide when user clicks return
extension ViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

//    func HiS() {
//
//        var savd = finalN
//        print (savd)
//    }
