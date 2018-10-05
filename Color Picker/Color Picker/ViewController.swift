//
//  ViewController.swift
//  Color Picker
//
//  Created by Sarah Wooldridge on 10/3/18.
//  Copyright © 2018 Sarah Wooldridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    struct Color {
        var colorName: String!
        var colorDisplay: UIColor!
    }
    
    var colorArray = [Color(colorName: "Red", colorDisplay: UIColor.red),
                      Color(colorName: "Orange", colorDisplay: UIColor.orange),
                      Color(colorName: "Yellow", colorDisplay: UIColor.yellow),
                      Color(colorName: "Green", colorDisplay: UIColor.green),
                      Color(colorName: "Blue", colorDisplay: UIColor.blue),
                      Color(colorName: "Purple", colorDisplay: UIColor.purple)]

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        view.backgroundColor = colorArray[0].colorDisplay
        colorLabel.text = colorArray[0].colorName
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var colorLabel: UILabel!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorArray[row].colorName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colorArray[row].colorName
        view.backgroundColor = colorArray[row].colorDisplay
    }
}

