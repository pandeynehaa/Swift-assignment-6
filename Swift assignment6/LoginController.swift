//
//  LoginController.swift
//  Swift assignment5
//
//  Created by macmini20 on 13/09/2022.
//Neha Pandey

import UIKit

class LoginController: UIViewController {
    // MARK: - outlets
    @IBOutlet weak var icon: UITextField!
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var nameButton: UITextField!
    @IBOutlet weak var passButton: UITextField!
    @IBOutlet weak var test: UILabel!
    
    
    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //colors for four button in sign in page
        view.backgroundColor = .backgroundColor
        signinButton.backgroundColor = .colorBackground
        // Do any additional setup after loading the view.
        view.backgroundColor = .backgroundColor
        nameButton.backgroundColor = .colorBackground
        view.backgroundColor = .backgroundColor
        passButton.backgroundColor = .colorBackground
      
        icon.rightViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(named: "hidden")
        imageView.image = image
        icon.rightView = imageView
        
        let tabGuster = UITapGestureRecognizer(target: self, action: #selector(actionOnImage(_:)))
        test.isUserInteractionEnabled = true
        test.addGestureRecognizer(tabGuster)
        
        
        
        
    }
    
}

//MARK: - Methods
extension LoginController {
    
    @objc func actionOnImage(_ sender: UITapGestureRecognizer) {
        let stordboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = stordboard.instantiateViewController(withIdentifier: "LoginController")
        navigationController?.pushViewController(controller, animated: true)
    }
    }
    

