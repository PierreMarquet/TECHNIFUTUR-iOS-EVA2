//
//  ModalViewController.swift
//  MarquetPierre_iOS_Eva2
//
//  Created by Student05 on 22/06/2021.
//

import UIKit

class ModalViewController: UIViewController {
    
    @IBOutlet var screenBackground: UIImageView!
    @IBOutlet var closeButton: UIButton!
    @IBOutlet var googleImage: UIImageView!
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var connexionButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        screenBackground.backgroundColor = .black
        
        closeButton.setTitle("Close", for: .normal)
        closeButton.tintColor = .white
        
        googleImage.image = UIImage(named: "google_header")
        
        loginTextField.placeholder = "Login"
        
        passwordTextField.placeholder = "Password"
        
        connexionButton.setTitle("Connexion", for: .normal)
        connexionButton.tintColor = .black
        connexionButton.backgroundColor = .yellow
        
    }
    
    @IBAction func didTapCloseButton(){
        dismiss(animated: true, completion: nil)
    }
    
    public func validateEmailId(emailID: String) -> Bool {
         let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
         let trimmedString = emailID.trimmingCharacters(in: .whitespaces)
         let validateEmail = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
         let isValidateEmail = validateEmail.evaluate(with: trimmedString)
         return isValidateEmail
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
