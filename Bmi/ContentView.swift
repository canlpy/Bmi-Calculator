//
//  ContentView.swift
//  Bmi
//
//  Created by Can on 11.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sexuality = ""
    @State private var heightType = "cm"
    @State private var weightType = "kg"
    @State private var height : Double = 130.0
    @State private var weight = 60
    @State private var age = 30
    @State private var result : Double = 0.0
    @State private var heightCm = 175.0
    @State private var heightInch = 60.0
    @State private var isEditing = false
    @State private var sliderStart =  120.0
    @State private var sliderEnd =  230.0
    @State private var heightInc = 1.0
    @State private var sliderValue = 175.0
    @State private var heightValue = 0.0
    @State private var weightKg = 60
    @State private var stepperValue = 60.0
    
   
    @State private var heightSpecifier = "%.0f"
    
   
    
    // buttons
    @State private var maleButtonColor = Color.black
    @State private var femaleButtonColor = Color.gray
    @State private var activeButtonColor = Color.black
    @State private var passiveButtonColor = Color.gray
    @State private var inchButtonColor = Color.gray
    @State private var cmButtonColor = Color.black
    @State private var LbsButtonColor = Color.gray
    @State private var kgButtonColor = Color.black
    
    
    
    
    func calculate()  {
        if heightType == "inch" {
            heightInch =  sliderValue * 2.54
            height = heightInch / 100
            result = Double(weight) / (height * height)
        } else {
            height = sliderValue / 100
            result = Double(weight) / (height * height)
        }
        if weightType == "kg" {
            weight = Int(stepperValue)
        } else if weightType == "lbs" {
            weight = Int((stepperValue * 2.20462262))
        }
        
    
}
   
     
    
    
 
    
    
    
    
    
    
    
    
    
    
    
    var body: some View {
        
        
        
        
     
        
        
        ZStack(alignment: .bottom ) {
            VStack{
                Spacer()
                Text("Bmi Calculator")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    
               
                HStack {
                    
                Spacer()
                    Button("Male") {
                        maleButtonColor = activeButtonColor
                        femaleButtonColor = passiveButtonColor
                        sexuality = "male"
                       
                        
                    }.frame(width: 150.0, height: 150.0).background(maleButtonColor)
                    
                    
                    
                   
                
                
            Spacer()
                    Button("Female") {
                        femaleButtonColor = Color.black
                        maleButtonColor = Color.gray
                        sexuality = "female"
                    }
                .frame(width: 150.0, height: 150.0).background(femaleButtonColor)
                
                Spacer()
            
            }.font(.largeTitle)
                    .foregroundColor(Color.white)
                    
                
                HStack(alignment: .center)
                {
                    Spacer()
                        .frame(width: 30.0)
                    Button ("Inch") {
                        inchButtonColor = activeButtonColor
                        cmButtonColor = passiveButtonColor
                        
                        if heightType == "cm" {
                        heightType = "inch"
                        sliderValue *= 0.3937
                        }
                        
                        heightSpecifier = "%.1f"
                        
                        
                        
                        
                    }
                        .frame(width: 70.0, height: 60.0)
                        
                        
                        .background(inchButtonColor)
                    Spacer()
                    Button ("cm") {
                        cmButtonColor = activeButtonColor
                        inchButtonColor = passiveButtonColor
                        
                        if heightType == "inch" {
                        
                        heightType = "cm"
                        sliderValue /= 0.3937
                            
                        }
                        
                        heightSpecifier = "%.0f"
                        
                    }
                        
                        .frame(width: 70.0, height: 60.0)
                        .background(cmButtonColor)
                    
                    Spacer()
                    Button ("Lbs") {
                        LbsButtonColor = activeButtonColor
                        kgButtonColor = passiveButtonColor
                        if weightType == "kg" {
                            weightType = "Lbs"
                            stepperValue /= 2.20462262
                        }
                        
                        
                    }
                        
                        .frame(width: 70.0, height: 60.0)
                        .background(LbsButtonColor)
                    Spacer()
                    Button ("kg") {
                        kgButtonColor = activeButtonColor
                        LbsButtonColor = passiveButtonColor
                        
                        if weightType == "Lbs" {
                        weightType = "kg"
                            stepperValue *= 2.20462262
                        }
                        
                        
                        
                    }
                        
                        .frame(width: 70.0, height: 60.0)
                        .background(kgButtonColor)
                    Spacer()
                        .frame(width: 30.0)
                    
                    
                }.font(.title)
                    .foregroundColor(Color.white)
                
                
                
                
               
            
           
                
                
                
                VStack(alignment: .center) {
                    HStack{
                        
                        
                       
                        
                        
                        Text("Height \(sliderValue, specifier: heightSpecifier) \(heightType)")
                        
                  }.foregroundColor(.white).font(.title)
                    
                    if heightType == "cm" {
                        
                        Slider(
                            value: $sliderValue,
                            in: 120...230 ,
                            step: 1.0
                        )
                    } else if heightType == "inch" {
                     
                        Slider(
                            value: $sliderValue,
                            in: 40...90 ,
                            step: 0.1
                        )
                    }
                  
                        
                        
                        
                    
                    
                    
                    
                    
                    
                }
                .frame(width: 332.0, height: 150.0)
                
                .background(.gray)
                
                
           
                
               
                HStack{
                    Spacer()
                    VStack{
                        Text("Weight")
                            
                        Text(String(format: "%.0f", stepperValue))
                            
                        
                        HStack{
                            Button("-") {
                                stepperValue -= 1
                            }
                                
                            
                            Button("+") {
                                stepperValue += 1
                            }
                            
                        }
                    }.frame(width: 150.0, height: 150.0).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                   
                    
                    VStack{
                        Text("Age")
                            
                        Text(String(age))
                        
                        HStack{
                            Button("-") {
                                age -= 1
                                
                            }
                            Button("+") {
                                age += 1
                            }
                            
                        }
                    }.frame(width: 150.0, height: 150.0).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                    
                
                        Spacer()
                    
                    
                } .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                
               
                
                Button("Calculate"){
                    calculate() ;
                    
                    
                   
                    
                }.font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .frame(width: 332.0, height: 60.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                
                Spacer()
                Text("Your Bmi is "  + String(format: "%.1f", result))
                    .font(.largeTitle)
                   
                    
                
                    
                
                
                   
                
            }
           
            
            
            
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


       
        
       
