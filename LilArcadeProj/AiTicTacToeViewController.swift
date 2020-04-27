//
//  AiTicTacToeViewController.swift
//  LilArcadeProj
//
//  Created by Leroy on 4/26/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit

class AiTicTacToeViewController: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var p1Icon: UIImageView!
      @IBOutlet weak var p2Icon: UIImageView!
      
      @IBOutlet weak var multiplayerSwitch: UISwitch!
      let imagePicker = UIImagePickerController()
      
      @IBOutlet var gridButtons: [UIButton]!
      
      @IBOutlet weak var p1ScoreLabel: UILabel!
      @IBOutlet weak var p2ScoreLabel: UILabel!
      
      @IBOutlet weak var winnerLabel: UILabel!
      //might cause a problem due to the wrong string?
      var img1 = UIImage(named: "cross")
      var img2 = UIImage(named: "nought")
      
      var grid = [[0,0,0], [0,0,0],[0,0,0]]
      var currentPlayer : Int = 1
      
    //current score
      var p1score : Int = 0
      var p2score : Int = 0
      
      func start() {
          var grid =       [[0,0,0],[0,0,0],[0,0,0]]
          for button in gridButtons{
              button.setImage(nil, for: .normal)
          }
          currentPlayer = 1
      }
      
      @IBAction func btnX(_ sender: UIButton) {
          currentPlayer = 1
      }
      @IBAction func btnO(_ sender: UIButton) {
          currentPlayer = 2
      }
      
      @IBAction func cellSelected(_ sender: UIButton) {
          let rowIndex = sender.tag / 3
          let colIndex = sender.tag % 3
          
          if grid[rowIndex][colIndex] != 0 {return}
          grid[rowIndex][colIndex] = currentPlayer
          if currentPlayer == 1 {
              sender.setImage(img1, for: .normal)
          }
          else if currentPlayer == 2 {
              sender.setImage(img2, for: .normal)
              
          }
          let winner = winlose()
          switch winner {
          case 0:
              currentPlayer = (currentPlayer % 2) + 1
          case 1:
              winnerlabel.text = "Player 1 is the winner!"
              alertWinner(playerName: "Player 1")
              
              p1Score += 1
              p1ScoreLAbel.text = "Score: \(p1Score)"
              historyTextView.insertText("\nPlayer 1's result: \(p1Score)")
          case 2:
              winnerLabel.text = "Player 2 is the winner!"
              alertWinner(playerNAme: "Player 2")
              
              p2Score += 1
              p2ScoreLabel.text = "Score: \(p2Score)"
              historyTextView.insertText("\nPlayer 2's result: \(p2Score)")
          default:
              winnerLAbel.text = "\(winner) is not matched"
          }
          if multiPlayerSwitch.isOn == false{
              let (cellIndex, gridRowIndex, gridColIndex, p2Win) = whereToPlay()
              gridButtons[cellINdex].setIMage(img2, for: normal)
              grid[gridRowIndex][gridColIndex] = 2
              if p2Win == true {
                  alertWinner(playerName: "Player 2")
              }
              currentPlayer = 1
          }
          
          func winlose() -> Int{
              if grid[0][0] != 0 && grid[0][0] == grid[0][1] && grid[0][1] == grid[0][2] {
                  return grid[0][0]
              }
              if grid[1][0] != 0 grid[1][0] == grid[0][1] && grid[1][1] == grid[1][2] {
                  return grid[1][0]
              }
              if grid[2][0] != 0 grid[2][0] == grid[2][1] && grid[2][1] == grid[2][2] {
                  return grid[2][0]
              }
              if grid[0][0] != 0 && grid[0][0] == grid[2][0] {
                  return grid[0][0]
              }
              if grid[0][1] != 0 && grid[0][1] == grid [1][1] && grid[1][1] == grid[2][1] {
                  return grid[0][1]
              }
              if grid[0][2] != 0 && grid[0][2] == grid[1][2] && grid[1][2] == grid[2][2] {
                  return grid[2][2]
              }
              if grid[0][2] != 0 && grid[0][2] == grid [1][1]
              && grid[1][1] == grid[2][0]{
                  return grid[2][0]
              }
              if grid[0][0] != 0 && grid[0][0] == grid[1][1] && grid[1][1] == grid[2][2]{
                  return grid[2][2]
              }
              return 0
              }
          
          func whereToPlay() -> (Int, Int, Int, Bool) {
              var index = -1
              var draw = 0
              var gridRowIndex = 0
              var gridColIndex = 0
              
              for row in 0 ... 2 {
                  for col in 0 ... 2 {
                  index = index + 1
                      if grid[row][col] == 0
                  {
                      grid[row][col] = 2
                      
                      var i = winlose()
                      if i == 2
                      {   return (index, row, col, true)}
                      grid[row][col] = 1
                      i = winlose()
                      if i == 1
                      
                      }
              }
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


