//
//  ChangeColour.swift
//  SampleProject
//
//  Created by Thomas Mazzag on 03/06/2022.
//

import UIKit

class ChangeColour: UIViewController {
    
    
    @IBOutlet weak var rVal: UISlider!
    @IBOutlet weak var gVal: UISlider!
    @IBOutlet weak var bVal: UISlider!
    @IBOutlet weak var bButton: UIButton!
    
    
    
    @IBAction func rSlider(_ sender: UISlider) {
        print(Int((sender.value)))
        Preview.backgroundColor = UIColor(red: CGFloat((rVal.value))/255, green: CGFloat((gVal.value))/255, blue: CGFloat((bVal.value))/255, alpha: 1)
    }
    @IBAction func gSlider(_ sender: UISlider) {
        print(Int((sender.value)))
        Preview.backgroundColor = UIColor(red: CGFloat((rVal.value))/255, green: CGFloat((gVal.value))/255, blue: CGFloat((bVal.value))/255, alpha: 1)
    }
    @IBAction func bSlider(_ sender: UISlider) {
        print(Int((sender.value)))
        Preview.backgroundColor = UIColor(red: CGFloat((rVal.value))/255, green: CGFloat((gVal.value))/255, blue: CGFloat((bVal.value))/255, alpha: 1)
    }
    

    @IBOutlet weak var Preview: UILabel!
    //Preview.layer.masksToBounds = true
    //Preview.layer.cornerRadius = 5
    
    @IBOutlet weak var OptionBgBtt: UISegmentedControl!
    
    @IBAction func OptionBgBtt(_ sender: Any) {
//        if sender.selectedSegment == 0 {
  //
    //    }
    }
        
    
    
    
    
    @IBAction func Change(_ sender: UIButton) {
        if OptionBgBtt.selectedSegmentIndex == 0 {
            self.view.backgroundColor = UIColor(red: CGFloat((rVal.value))/255, green: CGFloat((gVal.value))/255, blue: CGFloat((bVal.value))/255, alpha: 1)
        }
        else {
            bButton.tintColor = UIColor(red: CGFloat((rVal.value))/255, green: CGFloat((gVal.value))/255, blue: CGFloat((bVal.value))/255, alpha: 1)
        }
        
        //self.view.backgroundColor = UIColor(red: CGFloat((rVal.value))/255, green: CGFloat((gVal.value))/255, blue: CGFloat((bVal.value))/255, alpha: 1)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Preview.layer.masksToBounds = true
        Preview.layer.cornerRadius = 5

        // Do any additional setup after loading the view.
    }
    

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    


}
