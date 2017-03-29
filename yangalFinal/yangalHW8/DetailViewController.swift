//
//  ViewController.swift
//  yangalHW8
//
//  Created by Yang Aolin on 3/5/17.
//  Copyright © 2017 Aolin Yang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var product: Product?
    
    override func viewWillAppear(_ animated: Bool) {
        if let p = product{
            titleLabel.text = p.name
            descriptionLabel.text = p.longDescription
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var stepperValue: UIStepper!
    @IBAction func stepperAction(_ sender: Any) {
        selectedQuantity.text = "\(stepperValue.value)"
    }
    @IBOutlet var selectedQuantity: UILabel!
    
    
    @IBAction func addCartPressed(_ sender: Any) {
        //find this product
        for item in products{
            if (item.name == product?.name){
                //add selected quantity
                item.quantity += Int(stepperValue.value)
            }
        }
        
        //added success alert
        let myAlert = UIAlertController(title:"Success",
                                        message:"\(Int(stepperValue.value)) of \(product!.name) are added to your cart, displayed on product list",
                                        preferredStyle:UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style:UIAlertActionStyle.default){
            action in
        }

        myAlert.addAction(okAction)
        
        self.present(myAlert,animated:true, completion:nil)

        
        
    }
    func displayMyAlertMessage(userMessage:String){
        let myAlert = UIAlertController(title:"Alert",
                                        message:userMessage,
                                        preferredStyle:UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style:UIAlertActionStyle.default, handler:nil)
        
        myAlert.addAction(okAction)
        
        self.present(myAlert,animated:true, completion:nil)
    }
}

