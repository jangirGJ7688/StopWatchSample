//
//  StopWatchViewModel.swift
//  StopWatchSample
//
//  Created by Ganpat Jangir on 28/08/24.
//

import Foundation

class StopWatchViewModel: ObservableObject {
    @Published var dateString = "00:00:00"
    
    var timer: Timer?
    var seconds = 0.0
    
    func start() {
        if timer != nil {
            return
        }
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { [weak self] _ in
            self?.seconds += 1
            let date = Date(timeIntervalSinceNow: -(self?.seconds ?? 0))
            let diff = Calendar.current.dateComponents([.hour,.minute,.second], from: date,to: Date())
            let hours = String(format: "%.2i", diff.hour ?? 0)
            let minutes = String(format: "%.2i", diff.minute ?? 0)
            let sec = String(format: "%.2i", diff.second ?? 0)
            self?.dateString = "\(hours):\(minutes):\(sec)"
        })
    }
    
    func stop() {
        self.timer?.invalidate()
        self.timer = nil
    }
    
    func resume() {
        if timer == nil && self.seconds > 0{
            start()
        }
    }
    
    func reset() {
        self.timer?.invalidate()
        self.timer = nil
        self.seconds = 0
        self.dateString = "00:00:00"
    }
}
