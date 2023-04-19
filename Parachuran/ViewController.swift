//
//  ViewController.swift
//  Parachuran
//
//  Created by R93 on 01/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceSlider: UISlider!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var onOffActivityIndicatorSwitch: UISwitch!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var colorSegment: UISegmentedControl!
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureOnOffActivityIndicatorSwitch()
        configureColorSegment()
        configureStepper()
        configurePriceSlider()
    }

    
    private func configureOnOffActivityIndicatorSwitch() {
        onOffActivityIndicatorSwitch.onTintColor = .green
        onOffActivityIndicatorSwitch.thumbTintColor = . white
        onOffActivityIndicatorSwitch.isOn = true
    }
    
    private func configureColorSegment() {
        colorSegment.selectedSegmentIndex = 2
        colorSegment.selectedSegmentTintColor = .white
        colorSegment.backgroundColor = .lightGray
    }
    
    private func configurePriceSlider() {
        priceSlider.thumbTintColor = .black
        priceSlider.tintColor = .yellow
        priceSlider.minimumValue = -20
        priceSlider.maximumValue = 100
    }
    
    private func configureStepper() {
        
        quantityLabel.text = "No of students: \(stepper.value)"
        stepper.minimumValue = 0
        stepper.stepValue = 20
        stepper.maximumValue = 2000
        stepper.value = 2000
        
    }
    
    
    
    @IBAction func onOffActivityIndicatorSwitchTapped(_ sender: UISwitch) {
        sender.isOn ? activityIndicatorView.startAnimating() : activityIndicatorView.stopAnimating()
    }
    
    
    @IBAction func colorSegmentTapped(_ sender: UISegmentedControl) {
        switch colorSegment.selectedSegmentIndex {
            case 0:
                view.backgroundColor = .blue
                activityIndicatorView.stopAnimating()
                onOffActivityIndicatorSwitch.isOn = false
            case 1:
                view.backgroundColor = .yellow
                activityIndicatorView.startAnimating()
                onOffActivityIndicatorSwitch.isOn = true
            case 2: view.backgroundColor = .cyan
            case 3: view.backgroundColor = .orange
            default: view.backgroundColor = .black
        }
    }
    
    @IBAction func stepperTapped(_ sender: UIStepper) {
        quantityLabel.text = "No of students: \(stepper.value)"
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        quantityLabel.text = "Price :$\(Int(priceSlider.value))"
    }
    
}

