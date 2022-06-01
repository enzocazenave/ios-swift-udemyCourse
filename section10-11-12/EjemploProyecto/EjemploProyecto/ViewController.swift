//
//  ViewController.swift
//  EjemploProyecto
//
//  Created by Enzo Cazenave on 31/05/2022.
//

import UIKit

class ViewController: UIViewController {
    // Outlets
    
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myProgressView: UIProgressView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var myStepperLabel: UILabel!
    @IBOutlet weak var mySwitchLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTextView: UITextView!
    
    // Variables
    
    private let myPickerViewValues = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Buttons
        
        myButton.setTitle("Mi boton", for: .normal)
        myButton.backgroundColor = .blue
        myButton.setTitleColor(.white, for: .normal)
        myButton.layer.cornerRadius = 8.0
        myButton.isHidden = true
        
        // Pickers
        
        myPickerView.backgroundColor = .lightGray
        myPickerView.dataSource = self
        myPickerView.delegate = self
        myPickerView.isHidden = true
        
        // PageControls
        
        myPageControl.numberOfPages = myPickerViewValues.count
        myPageControl.currentPageIndicatorTintColor = .blue
        myPageControl.pageIndicatorTintColor = .lightGray
        myPageControl.isHidden = true
        
        // SegmentedControls
        
        mySegmentedControl.removeAllSegments()
        
        for (index, value) in myPickerViewValues.enumerated() {
            mySegmentedControl.insertSegment(withTitle: value, at: index, animated: true)
        }
        
        mySegmentedControl.isHidden = true
        
        // Slider
        
        mySlider.minimumTrackTintColor = .red
        mySlider.minimumValue = 1
        mySlider.maximumValue = Float(myPickerViewValues.count)
        mySlider.value = 1
        mySlider.isHidden = true
        
        // Stepper
        
        myStepper.value = 1
        myStepper.minimumValue = 1
        myStepper.maximumValue = Double(myPickerViewValues.count)
        myStepper.isHidden = true
        
        // Switch
        
        mySwitch.onTintColor = .purple
        mySwitch.isOn = false
        
        // Progress Indicator
        
        myProgressView.progress = 0
        myProgressView.isHidden = true
        
        // Activity Indicator
        
        myActivityIndicator.color = .orange
        myActivityIndicator.startAnimating()
        myActivityIndicator.hidesWhenStopped = true
        
        // Labels
        
        myStepperLabel.textColor = .darkGray
        myStepperLabel.font = UIFont.boldSystemFont(ofSize: 36)
        myStepperLabel.text = "1"
        myStepperLabel.isHidden = true
        
        mySwitchLabel.text = "Esta apagado"
        
        // Text Field
        
        myTextField.textColor = .brown
        myTextField.placeholder = "Escribe algo"
        myTextField.delegate = self
        
    }
    
    // Actions
    
    @IBAction func myButtonAction(_ sender: Any) {
        if myButton.backgroundColor == .blue {
            myButton.backgroundColor = .green
        } else {
            myButton.backgroundColor = .blue
        }
    }
    
    @IBAction func myPageControlAction(_ sender: Any) {
        myPickerView.selectRow(myPageControl.currentPage, inComponent: 0, animated: true)
        let myString = myPickerViewValues[myPageControl.currentPage]
        myButton.setTitle(myString, for: .normal)
        mySegmentedControl.selectedSegmentIndex = myPageControl.currentPage
        mySlider.value = Float(myPageControl.currentPage) + 1
        myStepper.value = Double(myPageControl.currentPage) + 1
    }
    
    
    @IBAction func mySegmentControlAction(_ sender: Any) {
        myPickerView.selectRow(mySegmentedControl.selectedSegmentIndex, inComponent: 0, animated: true)
        let myString = myPickerViewValues[mySegmentedControl.selectedSegmentIndex]
        myButton.setTitle(myString, for: .normal)
        myPageControl.currentPage = mySegmentedControl.selectedSegmentIndex
        mySlider.value = Float(mySegmentedControl.selectedSegmentIndex) + 1
        myStepper.value = Double(mySegmentedControl.selectedSegmentIndex) + 1
    }
    
    @IBAction func mySliderAction(_ sender: Any) {
        var progress: Float = 0
        
        switch mySlider.value {
        case 1..<2:
            mySegmentedControl.selectedSegmentIndex = 0
            progress = 0.2
        case 2..<3:
            mySegmentedControl.selectedSegmentIndex = 1
            progress = 0.4
        case 3..<4:
            mySegmentedControl.selectedSegmentIndex = 2
            progress = 0.6
        case 4..<5:
            mySegmentedControl.selectedSegmentIndex = 3
            progress = 0.8
        default:
            mySegmentedControl.selectedSegmentIndex = 4
            progress = 1.0
        }
        
        myPickerView.selectRow(mySegmentedControl.selectedSegmentIndex, inComponent: 0, animated: true)
        let myString = myPickerViewValues[mySegmentedControl.selectedSegmentIndex]
        myButton.setTitle(myString, for: .normal)
        myPageControl.currentPage = mySegmentedControl.selectedSegmentIndex
        myStepper.value = Double(mySegmentedControl.selectedSegmentIndex) + 1
        myProgressView.progress = progress
    }
    
    
    @IBAction func myStepperAction(_ sender: Any) {
        let value = myStepper.value - 1
        mySlider.value = Float(value) + 1
        mySegmentedControl.selectedSegmentIndex = Int(value)
        myPickerView.selectRow(Int(value), inComponent: 0, animated: true)
        myButton.setTitle(myPickerViewValues[Int(value)], for: .normal)
        myPageControl.currentPage = Int(value)
        myStepperLabel.text = String(Int(value + 1))
    }
    
    @IBAction func mySwitchAction(_ sender: Any) {
        if mySwitch.isOn {
            myPickerView.isHidden = false
            myButton.isHidden = false
            myPageControl.isHidden = false
            mySegmentedControl.isHidden = false
            mySlider.isHidden = false
            myStepper.isHidden = false
            myActivityIndicator.stopAnimating()
            myActivityIndicator.isHidden = true
            myProgressView.isHidden = false
            myStepperLabel.isHidden = false
            mySwitchLabel.isHidden = true
        } else {
            myPickerView.isHidden = true
            myButton.isHidden = true
            myPageControl.isHidden = true
            mySegmentedControl.isHidden = true
            mySlider.isHidden = true
            myStepper.isHidden = true
            myActivityIndicator.startAnimating()
            myProgressView.isHidden = true
            myStepperLabel.isHidden = true
            mySwitchLabel.isHidden = false
            mySwitchLabel.text = "Esta apagado"
        }
    }
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myPickerViewValues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myPickerViewValues[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let myString = myPickerViewValues[row]
        myButton.setTitle(myString, for: .normal)
        myPageControl.currentPage = row
        mySegmentedControl.selectedSegmentIndex = row
        mySlider.value = Float(row) + 1
        myStepper.value = Double(row) + 1
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        myButton.setTitle(myTextField.text, for: .normal)
    }
}

