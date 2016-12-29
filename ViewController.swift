//
//  ViewController.swift
//  Mirical Pills app#1
//
//  Created by MimiCom24 Digital  on 12/28/16.
//  Copyright © 2016 MimiCom24 Digital . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var cityBtn: UIButton!
    @IBOutlet weak var cityPick: UIPickerView!
    
    let city = ["New York", "Miami", "Boston", "Fort Lauderdale", "Palm Beach", "Los Angeles", "Orlado", "San Antonio", "Siettle", "San Francisco", "San Diego"]
    
    
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var streetAddress: UILabel!
    @IBOutlet weak var adressText: UITextField!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var numbetText: UITextField!
    @IBOutlet weak var cityName: UILabel!
    
    @IBOutlet weak var successPic: UIImageView!
    @IBOutlet weak var buyNowBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityPick.dataSource = self
        cityPick.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func cityBtn(_ sender: Any) {
        
        cityPick.isHidden = false
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return city.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return city[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        cityBtn.setTitle(city[row], for: UIControlState.normal)
        cityPick.isHidden = true
    }
    
   
    @IBAction func BuyBtn(_ sender: Any) {
        
        successPic.isHidden = false
        fullName.isHidden = true
        nameText.isHidden = true
        streetAddress.isHidden = true
        adressText.isHidden = true
        phoneNumber.isHidden = true
        numbetText.isHidden = true
        buyNowBtn.isHidden = true
        cityBtn.isHidden = true
        cityName.isHidden = true
        
        
    }
    
    
    
    
    
}

