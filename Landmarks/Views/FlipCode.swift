//
//  FlipCode.swift
//  Landmarks
//
//  Created by Kagan Kuscu on 17.05.23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct FlipCode: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FlipCode_Previews: PreviewProvider {
    static var previews: some View {
        flipClockVC
    }
}

import UIKit

class FlipClockViewController: UIViewController {
    private var timer: Timer?
    
    private let hourTensLabel: FlipLabel = {
        let label = FlipLabel(frame: CGRect(x: 50, y: 100, width: 50, height: 80))
        label.text = "0"
        return label
    }()
    
    private let hourOnesLabel: FlipLabel = {
        let label = FlipLabel(frame: CGRect(x: 110, y: 100, width: 50, height: 80))
        label.text = "0"
        return label
    }()
    
    private let minuteTensLabel: FlipLabel = {
        let label = FlipLabel(frame: CGRect(x: 180, y: 100, width: 50, height: 80))
        label.text = "0"
        return label
    }()
    
    private let minuteOnesLabel: FlipLabel = {
        let label = FlipLabel(frame: CGRect(x: 240, y: 100, width: 50, height: 80))
        label.text = "0"
        return label
    }()
    
    private let secondTensLabel: FlipLabel = {
        let label = FlipLabel(frame: CGRect(x: 310, y: 100, width: 50, height: 80))
        label.text = "0"
        return label
    }()
    
    private let secondOnesLabel: FlipLabel = {
        let label = FlipLabel(frame: CGRect(x: 370, y: 100, width: 50, height: 80))
        label.text = "0"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(hourTensLabel)
        view.addSubview(hourOnesLabel)
        view.addSubview(minuteTensLabel)
        view.addSubview(minuteOnesLabel)
        view.addSubview(secondTensLabel)
        view.addSubview(secondOnesLabel)
        
        startTimer()
    }
    
    private func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc private func updateTime() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        let currentTime = dateFormatter.string(from: Date())
        
        let components = currentTime.components(separatedBy: ":")
        
        if let hour = Int(components[0]), let minute = Int(components[1]), let second = Int(components[2]) {
            updateLabel(label: hourTensLabel, value: hour / 10)
            updateLabel(label: hourOnesLabel, value: hour % 10)
            updateLabel(label: minuteTensLabel, value: minute / 10)
            updateLabel(label: minuteOnesLabel, value: minute % 10)
            updateLabel(label: secondTensLabel, value: second / 10)
            updateLabel(label: secondOnesLabel, value: second % 10)
        }
    }
    
    private func updateLabel(label: FlipLabel, value: Int) {
        label.text = "\(value)"
        label.flip()
    }
}

class FlipLabel: UILabel {
    func flip() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType(rawValue: "flip")
        transition.subtype = CATransitionSubtype.fromTop
        layer.add(transition, forKey: nil)
    }
}

// Create an instance of FlipClockViewController and present it
let flipClockVC = FlipClockViewController()
// Present the view controller using your preferred method
