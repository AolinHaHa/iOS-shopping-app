//
//  loginViewController.swift
//  yangalHW8
//
//  Created by Yang Aolin on 3/9/17.
//  Copyright © 2017 Aolin Yang. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var username: UITextField!

    @IBOutlet var password: UITextField!
    
    @IBAction func login_pressed(_ sender: Any) {
        let user_name = username.text
        let pass_word = password.text
        
        let user_nameStored = UserDefaults.standard.string(forKey: "username")
        
        let user_passwordStored = UserDefaults.standard.string(forKey: "userpassword")
        
        if (user_nameStored == user_name){
            if (user_passwordStored == pass_word){
                //login successfull
                UserDefaults.standard.set(true, forKey:"isUserLoggedIn")
                UserDefaults.standard.synchronize()
                self.performSegue(withIdentifier: "TableView", sender: self)
            }
        }
        //login failed
        let myAlert = UIAlertController(title:"Alert",
                                        message:"Username/Password not match",
                                        preferredStyle:UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style:UIAlertActionStyle.default){
            action in self.dismiss(animated: true, completion: nil)
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

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
