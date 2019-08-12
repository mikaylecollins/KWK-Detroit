//
//  ViewController.swift
//  camera
//
//  Created by Apple on 8/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController()
    //created a property in the class that accesses the image picker
    
    
    //added the sub classes for the UIImage pickercontrollerdelgate and UINavigationcontrollerdelgate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    //confirms taht image picker exists within the func
    }

    @IBOutlet weak var newImage: UIImageView!
    
    @IBAction func takeSelfie(_ sender: Any) {
  
    //made this appear by clicking and draging
    imagePicker.sourceType = .camera
 
        present(imagePicker,animated:true, completion: nil)
        //present is a vuilt in func in xcode
        //helps image picker identify the view controller we want
    }
    
    @IBAction func photoLibrary(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker,animated:true, completion: nil)
        //present is a vuilt in func in xcode
        //helps image picker identify the view controller we want
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
    
            newImage.image = selectedImage
    
    //do something wiht the photo i took/picked
    }
    
    
        imagePicker.dismiss(animated: true, completion: nil)
    
    


}
}
