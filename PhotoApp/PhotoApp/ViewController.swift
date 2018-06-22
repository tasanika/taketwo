//
//  ViewController.swift
//  PhotoApp
//
//  Created by Girls Who Code on 6/22/18.
//  Copyright © 2018 Girls Who Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate,
UIImagePickerControllerDelegate{
    
    
    var imagePickerController: UIImagePickerController!
    
    @IBOutlet weak var imageOne: UIImageView!
    
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePickerController.dismiss(animated: true, completion: nil)
        imageOne.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
        func saveImage(imageName: String) {
            let fileManager = FileManager.default
            let imagePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(imageName)
            
            let image = imageOne.image!
            let imageData = UIImagePNGRepresentation(image)
            fileManager.createFile(atPath: imagePath as String, contents: imageData, attributes: nil)
        }
        
    
    
    @IBAction func take(_ sender: Any) {
        imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .camera
        present(imagePickerController, animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: Any) {
        saveImage(imageName:"imageOne.png")
    }
    
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }

        
}

