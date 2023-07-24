//
//  ViewController.swift
//  Timer
//
//  Created by 이민호 on 2023/07/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet var lblSecond: UILabel!
    @IBOutlet var lblStartSec: UILabel!
    @IBOutlet var lblFinishSec: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var btn_start: UIButton!
        
    weak var timer: Timer?
    var counter = 0
    var timerStart = false
    var isPaused = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        slider.minimumValue = 0.0
        slider.maximumValue = 60.0
        slider.setValue(30.0, animated: true)
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        counter = Int(slider.value)
        lblSecond.text = "\(counter) 초"
    }
    
    @IBAction func btnReset(_ sender: UIButton) {
        resetTimer()
    }
    
    @IBAction func btnStart(_ sender: UIButton) {
        if counter == 0 {
            lblSecond.text = "초를 선택해야 시작할 수 있습니다."
            AudioServicesPlaySystemSound(SystemSoundID(1000))
        } else {
            if timerStart {
                pauseTimer()
                isPaused = true
                timerStart = false
                btn_start.setTitle("START", for: .normal)
            } else {
                if isPaused {
                    resumeTimer()
                    isPaused = false
                } else {
                    startTimer()
                }
                timerStart = true
                btn_start.setTitle("PAUSE", for: .normal)
            }
        }
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerTick), userInfo: nil, repeats: true)
    }
    
    @objc func timerTick() {
        // 타이머가 호출할 메서드입니다. 이 메서드는 1초마다 호출됩니다.
        counter -= 1
        slider.setValue(Float(counter), animated: true)
        lblSecond.text = "\(counter) 초"
        
        if counter == 0 {
            resetTimer()
        }
    }
    
    func pauseTimer() {
        if timer != nil && timer!.isValid {
            timer?.invalidate()
            isPaused = true
        }
    }
    
    func resumeTimer() {
        if isPaused {
            isPaused = false
            startTimer()
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
        isPaused = false
        AudioServicesPlaySystemSound(SystemSoundID(1000))
        counter = 0
    }
    
    func resetTimer() {
        timerStart = false
        isPaused = false
        counter = 0
        lblSecond.text = "초를 선택하세요"
        slider.setValue(30.0, animated: true)
        stopTimer()
        btn_start.setTitle("START", for: .normal)
    }
}

