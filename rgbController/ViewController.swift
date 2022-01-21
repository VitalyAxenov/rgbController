//
//  ViewController.swift
//  rgbController
//
//  Created by Виталий Аксенов on 16.01.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRed.minimumValue = 0
        getRed.maximumValue = 1
        getRed.value = 0.5
        getRed.minimumTrackTintColor = .red
        getGreen.minimumValue = 0
        getGreen.maximumValue = 1
        getGreen.value = 0.5
        getGreen.minimumTrackTintColor = .green
        getBlue.minimumValue = 0
        getBlue.maximumValue = 1
        getBlue.value = 0.5
        getBlue.minimumTrackTintColor = .blue
        paintedRGB.layer.cornerRadius = 5
        paintedRGB.backgroundColor = UIColor(
            red: 0.5,
            green: 0.5,
            blue: 0.5,
            alpha: 1
        )
        howRed.text = "Red \(Int(round(getRed.value * 100)))%"
        howGreen.text = "Green \(Int(round(getGreen.value * 100)))%"
        howBlue.text = "Blue \(Int(round(getBlue.value * 100)))%"
    }
    
    @IBOutlet var paintedRGB: UIView!
    
    @IBOutlet var getRed: UISlider!
    @IBOutlet var getGreen: UISlider!
    @IBOutlet var getBlue: UISlider!
    
    @IBOutlet var howRed: UILabel!
    @IBOutlet var howGreen: UILabel!
    @IBOutlet var howBlue: UILabel!
    
    func painting() {
        paintedRGB.backgroundColor = UIColor(
            red: CGFloat(getRed.value),
            green: CGFloat(getGreen.value),
            blue: CGFloat(getBlue.value),
            alpha: 1
        )
    }
    
    @IBAction func letItRed() {
        howRed.text = "Red \(Int(round(getRed.value * 100)))%"
        painting()
    }
    
    
    @IBAction func letItGreen() {
        howGreen.text = "Green \(Int(round(getGreen.value * 100)))%"
        painting()
    }
    
  
    @IBAction func letItBlue() {
        howBlue.text = "Blue \(Int(round(getBlue.value * 100)))%"
        painting()
    }
    
    
}

