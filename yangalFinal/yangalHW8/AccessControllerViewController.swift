//
//  AccessControllerViewController.swift
//  yangalHW8
//
//  Created by Yang Aolin on 3/9/17.
//  Copyright © 2017 Aolin Yang. All rights reserved.
//

import UIKit

class AccessControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var accessButton: UIButton!
    
    @IBOutlet var passtext: UITextField!
    @IBOutlet var nametext: UITextField!

    @IBOutlet var repasstext: UITextField!
    
    
    @IBAction func accessAction(_ sender: AnyObject) {
        let this_user_name = nametext.text
        let this_pass_word = passtext.text
        let this_repass = repasstext.text
        //check if there is any empty input
        if((this_user_name?.isEmpty)! || (this_pass_word?.isEmpty)! || (this_repass?.isEmpty)! ){
            displayMyAlertMessage(userMessage: "Empty input for username/password")
            return
        }
        //check if user re-enter password correctly
        if (this_repass != this_pass_word){
            displayMyAlertMessage(userMessage: "Password not match")
        }
        //save user info Using UserDefault
        UserDefaults.standard.set(this_user_name, forKey:"username")
        UserDefaults.standard.set(this_pass_word, forKey:"userpassword")
        UserDefaults.standard.synchronize()
        //registratioin success message
        let myAlert = UIAlertController(title:"Alert",
                                       message:"Thank you for registration",
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
