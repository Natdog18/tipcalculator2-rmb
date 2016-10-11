//
//  interactive.swift
//  CommandLineBase2
//
//  Created by Rose Bailey on 10/10/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation
class Interactive{
    private var done: Bool = false
    private var currentInPut: String = "q"
    private var io = Io()
    //var mealCost = ""
    //var tipPercentage = ""
    //var totalTip: Float = 0.0
    
    
    func go(){
        
        while !done {
            
            //Ask the user for input right here.
            io.writeMessage("\nInput?")
            currentInPut = io.getInput()
            
            if currentInPut == "q" {
                done = true
                
            } else if currentInPut == "t" {
                 calculateTip()
        
            
            } else {
                print("Inter a valid choice")
            }
        }
        print ("Exiting....")
        return
    }
    func calculateTip() {
        
                io.writeMessage("\n How much was the bill?")
            currentInPut = io.getInput()

        let billAmount: Double? = Double(currentInPut)
        
        io.writeMessage("\n What is percent of your tip?")
        currentInPut = io.getInput()

        let tipPercent: Double? = Double(currentInPut)
        
        let totalTip = ((tipPercent ?? 0.0) / 100)
       
        let totalTipAmount = ((billAmount ?? 0.0) * totalTip)
        print("amount of tip is: \(String(format:"%.02f", round(num:totalTipAmount)))")
        
        let finalBill = ((billAmount ?? 0.0) + totalTipAmount)
        
        print("amount of total bill: \(String(format:"%.02f", round(num:finalBill)))")
        
        
    }
    
        func round(num: Double) -> Double {
            let tmp = (num*100).rounded(.toNearestOrAwayFromZero)
            return tmp/100
        }
}

        
