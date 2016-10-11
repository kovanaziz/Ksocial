//
//  signInVC.swift
//  ktechSocial
//
//  Created by Kovan Azeez on 10/9/16.
//  Copyright © 2016 Kovan Azeez. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase




class signInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func facebookBtnPressed(_ sender: AnyObject) {
        
        // two step for auth, both facebook and firebase need auth
        //F03
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("JJJ: Unable to authenticate with Facebook - \(error)")
                
            } else if result?.isCancelled == true {
                print("JJJ: User canceled Facebook authentication")
            } else {
                print("JJJ: Successfully authentiacted with Facebook")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuthenticate(credential)
            }
        }
        
    }
    
    //F04 , this to authenticae in firebase with facbook auth.
    func firebaseAuthenticate(_ credential: FIRAuthCredential) {
        FIRAuth.auth()?.signIn(with: credential, completion: {
            (syer, error) in
            if error != nil {
                print("JJJ: unable to authenticate with Firebase - \(error)")
            } else {
                print("JJJ: Successfully authenticate with firebase")
            }
        })
    }

}

