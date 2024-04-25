//
//  ContentView.swift
//  unitConverter
//  ML
//  Created by Brian Vo on 4/24/24.
//

import SwiftUI

struct ContentView: View {
    //    milliliters, liters, cups, pints, or gallons
    let units = ["milliliter", "liter", "cup", "pint", "gallon"]
    
    @State private var inputUnit = "milliliter"
    @State private var inputUnitValue : Double =  0
    
    @State private var outputUnit = "cup"
    
    var inputValueML : Double{
    switch inputUnit {
    case "milliliter":
        return inputUnitValue
    case "liter":
        return inputUnitValue * 1000.0
    case "cup":
        return inputUnitValue * 236.6
    case "pint":
        return inputUnitValue * 473.18
    case "gallon":
        return inputUnitValue * 3785.41
    default:
        return 0
    }
    
        
        
        
    }
    
//    Currently trying to think of what happens when we do ml to ml
    var outputUnitValue : Double{
        
        switch outputUnit {
        case "milliliter":
            return inputUnitValue
        case "liter":
            return inputUnitValue / 1000.0
        case "cup":
            return inputUnitValue / 236.6
        case "pint":
            return inputUnitValue / 473.18
        case "gallon":
            return inputUnitValue / 3785.41
        default:
            return 0
        }
        
        
    }
    
    
    
    var body: some View {
        
        NavigationStack{
            Form{
        
                Section("Select your unit"){
                    Picker("Unit", selection: $inputUnit){
                        ForEach(units, id: \.self){
                            Text("\($0)")
                        }
                    }
                }
                Section("Number of units"){
                    TextField("How many units?", value: $inputUnitValue, format: .number)
                }
                
                Section("Output units"){
                    Picker("Unit", selection: $outputUnit){
                        ForEach(units, id:\.self){
                            Text("\($0)")
                        }
                    }
                }
                
                Section("Output"){
                    Text(outputUnitValue, format: .number)
                }
                
                
                
                
                
                
                
                
            }
        }
        
    }
}
    
    #Preview {
        ContentView()
    }
