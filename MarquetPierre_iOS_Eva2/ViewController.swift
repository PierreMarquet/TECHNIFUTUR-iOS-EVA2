//
//  ViewController.swift
//  MarquetPierre_iOS_Eva2
//
//  Created by Student05 on 22/06/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var loginScreenBackground: UIImageView!
    @IBOutlet var headerPokemonImage: UIImageView!
    @IBOutlet var connexionLabel: UILabel!
    @IBOutlet var googleButton: UIButton!
    @IBOutlet var facebookButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loginScreenBackground.backgroundColor = .black
        
        headerPokemonImage.image = UIImage(named: "header_pokemon")
        headerPokemonImage.contentMode = .scaleAspectFit
        
        connexionLabel.text = "Connexion via:"
        connexionLabel.textColor = .yellow
        connexionLabel.textAlignment = .center
    
        googleButton.setImage(UIImage(named: "google_ico"), for: .normal)
        googleButton.setTitle("Google", for: .normal)
        googleButton.tintColor = .yellow
        
        facebookButton.setImage(UIImage(named: "facebook_ico"), for: .normal)
        facebookButton.setTitle("Facebook", for: .normal)
        facebookButton.tintColor = .yellow
        
        
        
        
    }
    
    @IBAction func didTapOnGoogle(){
        
        if let modalGoogleViewController = storyboard?.instantiateViewController(identifier: "ModalViewController"){
            modalGoogleViewController.modalPresentationStyle = .fullScreen
            present(modalGoogleViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func didTapOnFacebook(){
        
        if let modalFacebookViewController = storyboard?.instantiateViewController(identifier: "ModalFacebookViewController"){
            modalFacebookViewController.modalPresentationStyle = .fullScreen
            present(modalFacebookViewController, animated: true, completion: nil)
        }
    }
    


}

