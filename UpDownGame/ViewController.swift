//
//  ViewController.swift
//  UpDownGame
//
//  Created by 유상민 on 2023/02/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터가 랜덤으로 숫자를 선택(1 ~ 10)
    var computerNumber: Int = Int.random(in: 1...10)
    // 내가 선택한 숫자
    var myNumber: Int = 0
    
    // 앱의 화면에 들어오면 가장 처음에 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 메인레이블 "선택하세요"
        mainLabel.text = "선택하세요"
        // 2) 숫자레이블 ""
        numberLabel.text = ""
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1) 버튼의 숫자를 가져와야함
        guard let numString = sender.currentTitle else { return }
        // 2) 숫자 레이블이 변하도록해야함(숫자에 따라서)
        numberLabel.text = numString
        // 3) 선택한 숫자를 변수에 저장해야함(선택)
        guard let numInt = Int(numString) else { return }
        myNumber = numInt
        
        // 4) 선택한 숫자를 변수에 저장하지 않고 진행하는 방법 (변수를 만들지 않음)
        // 숫자레이블에 있는 문자열 가져오기(옵셔널 벗기기)
//        guard let myNumString = numberLabel.text else { return }
//        // 타입 변환 (Stirng -> Int)
//        guard let myNumInt = Int(myNumString) else { return }
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1) 컴퓨터의 숫자와 내가 선택한 숫자를 비교 UP / Down / Bingo (메인레이블)
        if myNumber < computerNumber {
            mainLabel.text = "UP"
        } else if myNumber > computerNumber {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo😎"
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) 메인레이블 "선택하세요"
        mainLabel.text = "선택하세요"
        // 2) 숫자레이블 "" (빈문자열)
        numberLabel.text = ""
        // 3) 컴퓨터의 랜덤숫자를 다시 선택
        computerNumber = Int.random(in: 1...10)
    }
    
}

