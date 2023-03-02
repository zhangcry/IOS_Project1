//
//  ViewController.swift
//  MyStory
//
//  Created by Crystal Zhang on 3/1/23.
//

import UIKit

class ViewController: UIViewController {

    let whereIMoved = "Downtown LA!!! I live in a loft apartment with 3 other guys."
    let myBFF = "Cece!!! aka Cecilia Parekh. She a professional model. And we have been friends for over 20 years."
    let theTimeI = "Dated a guy and our relationship ended with us finding out we were third cousins."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedButton(_ sender: UITapGestureRecognizer) {
        if let tappedButton = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedButton)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if segue.identifier == "detailSegue",
        let tappedButton = sender as? UIButton,
        let detailViewController = segue.destination as? DetailViewController {
            
            if tappedButton.tag == 0 {
                detailViewController.text = whereIMoved
                detailViewController.image = UIImage(named: "loft")
            } else if tappedButton.tag == 1 {
                detailViewController.text = myBFF
                detailViewController.image = UIImage(named: "Image")
            } else if tappedButton.tag == 2 {
                detailViewController.text = theTimeI
                detailViewController.image = UIImage(named: "download")
            } else {
                print("no button was tapped, please check your selection.")
            }
        }
        
    }

}

