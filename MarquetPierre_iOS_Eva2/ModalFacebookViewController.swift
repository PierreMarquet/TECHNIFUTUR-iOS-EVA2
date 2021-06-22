//
//  ModalFacebookViewController.swift
//  MarquetPierre_iOS_Eva2
//
//  Created by Student05 on 22/06/2021.
//

import UIKit

class ModalFacebookViewController: UIViewController {
    
    @IBOutlet var screenBackground: UIImageView!
    @IBOutlet var closeButton: UIButton!
    @IBOutlet var facebookImage: UIImageView!
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var connexionButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        screenBackground.backgroundColor = .black
        
        closeButton.setTitle("Close", for: .normal)
        closeButton.tintColor = .white
        
        facebookImage.image = UIImage(named: "faceook_header")
        
        loginTextField.placeholder = "Login"
        
        passwordTextField.placeholder = "Password"
        
        connexionButton.setTitle("Connexion", for: .normal)
        connexionButton.tintColor = .black
        connexionButton.backgroundColor = .yellow
        
    }
    
    @IBAction func didTapCloseButton(){
        dismiss(animated: true, completion: nil)
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
