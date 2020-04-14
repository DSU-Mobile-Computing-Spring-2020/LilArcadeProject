//
//  TicTacToeViewController.swift
//  LilArcadeProj
//
//  Created by Leroy on 4/12/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit

class TicTacToeViewController: UIViewController {

   
    
    var activePlayer = 1 //This is going to be Cross
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    let winningCombinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    var gameIsActive = true
    
    
    @IBOutlet weak var label: UILabel!
    
    //I put this line on there cause it was in the video, dont know how he got that
    @IBAction func action(_ sender:AnyObject)
    {
        if (gameState[sender.tag-1]==0 && gameIsActive == true)
        {
            gameState[sender.tag-1] = activePlayer
        if (activePlayer == 1)
        {
            sender.setImage(UIImage(named: "Cross.png"), for: UIControl.State.normal)
            activePlayer = 2
        }
        else
        {
            sender.setImage(UIImage(named: "Nought.png"), for: UIControl.State.normal)
            activePlayer = 1
        }
    }
        
        for combination in winningCombinations
        {
            if (gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]])
            {
                gameIsActive = false
                
                if gameState[combination[0]] == 1
                {
                    //cross has won
                    label.text = "CROSS HAS WON"
                }
                else{
                    //Nought has won
                    label.text = "NOUGHT HAS WON"
                }
                
                playAgainButton.isHidden = false;
                label.isHidden = false
            }
        }
        //for i the user does not win or lose
        for i in gameState
        {
            if i == 0
            {
                gameIsActive = true
                break
            }
        }
        if gameIsActive == false{
            label.text = "IT WAS A DRAW"
            label.isHidden = false
            playAgainButton.isHidden = false
        }
    }
    @IBOutlet weak var playAgainButton: UIButton!
    @IBAction func playAgain(_ sender: Any) {
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        gameIsActive = true
        activePlayer = 1
        
        playAgainButton.isHidden = true
        label.isHidden = true
        
        for i in 1...9
        {
            let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControl.State())
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
