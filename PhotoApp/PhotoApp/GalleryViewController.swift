//
//  GalleryViewController.swift
//  PhotoApp
//
//  Created by Girls Who Code on 6/22/18.
//  Copyright © 2018 Girls Who Code. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    
    
@IBOutlet weak var imageTwo: UIImageView!
    
    func getImage(imageName: String){
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: imageName) {
            imageTwo.image = UIImage(contentsOfFile: imageName)
        } else {
            print("Oh no! No Image!")
        }}
        
    override func viewDidLoad() {
        super.viewDidLoad()
        getImage(imageName: "imageOne.png")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
