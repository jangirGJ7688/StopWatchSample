//
//  ContentView.swift
//  StopWatchSample
//
//  Created by Ganpat Jangir on 28/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = StopWatchViewModel()
    
    var body: some View {
        VStack(spacing: 50) {
            Label("StepWatch", systemImage: "applewatch")
                .font(.title.bold())
            Text(vm.dateString)
                .foregroundStyle(Color.black)
                .font(.title)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 18.0)
                        .foregroundColor(Color.pink.opacity(0.8))
                }
            VStack(spacing: 30) {
                Button(action: {
                    vm.start()
                }, label: {
                    Text("Start")
                        .foregroundStyle(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background {
                            RoundedRectangle(cornerRadius: 18.0)
                                .foregroundColor(Color.green)
                        }
                })
                
                Button(action: {
                    vm.stop()
                }, label: {
                    Text("Stop")
                        .foregroundStyle(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background {
                            RoundedRectangle(cornerRadius: 18.0)
                                .foregroundColor(Color.red)
                        }
                })
                .frame(maxWidth: .infinity)
                
                Button(action: {
                    vm.resume()
                }, label: {
                    Text("Resume")
                        .foregroundStyle(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background {
                            RoundedRectangle(cornerRadius: 18.0)
                                .foregroundColor(Color.blue)
                        }
                })
                .frame(maxWidth: .infinity)
                
                Button(action: {
                    vm.reset()
                }, label: {
                    Text("Reset")
                        .foregroundStyle(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background {
                            RoundedRectangle(cornerRadius: 18.0)
                                .foregroundColor(Color.orange)
                        }
                })
                .frame(maxWidth: .infinity)
            }
            .frame(width: 200)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
