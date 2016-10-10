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
    func go(){
        
        while !done {
            
            //Ask the user for input right here.
            io.writeMessage("\nInput?")
            currentInPut = io.getInput()
            
            if currentInPut == "q" {
                done = true
            }else {
                print("The input is: \(currentInPut)")
            }
        }
        print ("Exiting....")
        return
    }
    
}
