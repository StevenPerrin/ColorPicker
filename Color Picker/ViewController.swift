//
//  ViewController.swift
//  Color Picker
//
//  Created by Steven Perrin on 3/21/19.
//  Copyright © 2019 Steven Perrin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var color = [Color(name: "Red", uiColor: UIColor.red),
                 Color(name: "Orange", uiColor: UIColor.orange),
                 Color(name: "Yellow", uiColor: UIColor.yellow),
                 Color(name: "Green", uiColor: UIColor.green),
                 Color(name: "Blue", uiColor: UIColor.blue),
                 Color(name: "Purple", uiColor: UIColor.purple)]
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var colorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        self.view.backgroundColor = color[0].uiColor
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
    
    extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return color.count
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            colorLabel.text = color[row].name
            colorLabel.backgroundColor = color[row].uiColor
            self.view.backgroundColor = color[row].uiColor
        }
 
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return color[row].name
        }
        
}

