//
//  AddPhotoViewController.swift
//  View Finder
//
//  Created by Apple on 8/13/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func camera(_ sender: Any) {
    imagePicker.sourceType = .camera
        
    }
    
    @IBAction func photoLibrary(_ sender: Any) {
   imagePicker.sourceType = .photoLibrary
    }
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func save(_ sender: Any) {
   //imagePicker.sourceType =
        
    }
    
    @IBOutlet weak var newImage: UIImageView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as?
            UIImage {
            newImage.image = selectedImage
            
    }
        imagePicker.dismiss(animated: true, completion: nil)
    }
}
