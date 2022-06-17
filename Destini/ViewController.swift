//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Our strings
    let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
    let answer1a = "I\'ll hop in. Thanks for the help!"
    let answer1b = "Better ask him if he\'s a murderer first."
    
    
    let story2 = "He nods slowly, unphased by the question."
    let answer2a = "At least he\'s honest. I\'ll climb in."
    let answer2b = "Wait, I know how to change a tire."
    
    let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
    let answer3a = "I love Elton John! Hand him the cassette tape."
    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
    let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
    let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    var numberOfStories = 6
    var currentStory = 1
    
    
    
    func setStory(_ StoryNumber: Int) {
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        
//        // -- Load the first story
//        storyTextView.text = story1
//        topButton.setTitle(answer1a, for: .normal)
//        bottomButton.setTitle(answer1b, for: .normal)
        

        if (StoryNumber == 2)
        {
            storyTextView.text = story2
            topButton.setTitle(answer2a, for: .normal)
            bottomButton.setTitle(answer2b, for: .normal)
            bottomButton.isHidden = false
        }
        else if (StoryNumber == 3)
        {
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            bottomButton.isHidden = false
        }
        else if (StoryNumber == 4)
        {
            storyTextView.text = story4
//            topButton.setTitle(answer4a, for: .normal)
//            bottomButton.setTitle(answer4b, for: .normal)
            //topButton.isHidden = true
            topButton.setTitle("Restart???", for: .normal)
            bottomButton.isHidden = true
            currentStory = 99
        }
        else if (StoryNumber == 5)
        {
            storyTextView.text = story5
//            topButton.setTitle(answer5a, for: .normal)
//            bottomButton.setTitle(answer5b, for: .normal)
            //topButton.isHidden = true
            topButton.setTitle("Restart???", for: .normal)
            bottomButton.isHidden = true
            currentStory = 99
        }
        else if (StoryNumber == 6)
        {
            storyTextView.text = story6
//            topButton.setTitle(answer6a, for: .normal)
//            bottomButton.setTitle(answer6b, for: .normal)
            //topButton.isHidden = true
            topButton.setTitle("Restart???", for: .normal)
            bottomButton.isHidden = true
            currentStory = 99
        }
        else
        {
            // -- Load the first story and is the default
            storyTextView.text = story1
            topButton.setTitle(answer1a, for: .normal)
            bottomButton.setTitle(answer1b, for: .normal)
            bottomButton.isHidden = false
        }

        currentStory = StoryNumber
        print("StoryNumber \(StoryNumber)")
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        setStory(currentStory)
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton)
    {
        // -- Find out what button is pressed
        var buttonSelected = sender.tag
        
        print("Button pressed \(buttonSelected)")
        
        
        // TODO Step 4: Write an IF-Statement to update the views
        
        // -- If the first story
        if (currentStory == 1)
        {
            if (buttonSelected == 1)
            {
                setStory(3)
            }
            else
            {
                setStory(2)
            }
        }
        
        // -- If the second story
        else if (currentStory == 2)
        {
            if (buttonSelected == 1) {
                setStory(3) }
            else
            {
                setStory(4)
            }
        }
        
        // -- If the third story
        else if (currentStory == 3)
        {
            if (buttonSelected == 1)
            {
                setStory(6)
                
            }
            else
            {
                setStory(5)
            }
        }
        else // Reset the game
        {
            setStory(1)
        }
        
        
        
    

        
        // TODO Step 6: Modify the IF-Statement to complete the story
        
    
    }
    



}

