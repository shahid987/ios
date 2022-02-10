//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Mohammed,Shahid on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousBUtton: UIButton!
    @IBOutlet weak var crsSemester: UILabel!
    @IBOutlet weak var crsTitle: UILabel!
    @IBOutlet weak var crsNum: UILabel!
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    let courses = [
        ["image01","44555","Network Security","Fall 2022"],["image02","44643","ios","Spring 2022"],["image03","44656","Streaming Data","Summer 2022"]
        ]
    
    var imageNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Load the details(image,num,title,and sem) of the first(0th element) course
        updateUI(imageNumber);
        //Previous button is disabled
        
        previousBUtton.isEnabled = false;
    }

    @IBAction func nextButtonClicked(_ sender: Any) {
        imageNumber += 1
        updateUI(imageNumber)
        //UI should be updated with the next course details
        
        //previous button should be enabled
        previousBUtton.isEnabled = true
        // once reaching the end of courses array,nextButton should be disabled.
        if(imageNumber==courses.count-1){
            nextButton.isEnabled = false
        }
    }
    @IBAction func PreviousButtonClicked(_ sender: Any) {
        
        //UI should be updated with the next course details
        
        // next button should be enabled
        nextButton.isEnabled=true
        // Update the UI
        imageNumber -= 1
        updateUI(imageNumber)
        // if the course is at 0th position then  previous button should be disabled.
        if(imageNumber==0)
        {
            previousBUtton.isEnabled=false
        }
    }
    
    func updateUI(_ imageNumber : Int)
    {
        imageViewOutlet.image = UIImage(named: courses[imageNumber][0])
        crsNum.text = courses[imageNumber][1]
        crsSemester.text = courses[imageNumber][2]
        crsTitle.text = courses[imageNumber][3]
    }
    
    
}

