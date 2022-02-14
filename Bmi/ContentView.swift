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
    @State private var weightType = ""
    @State private var height : Double = 130.0
    @State private var weight = 60
    @State private var age = 30
    @State private var result : Double = 0.0
    @State private var heightCm = 175.0
    @State private var isEditing = false
    @State private var sliderStart =  120.0
    @State private var sliderEnd =  230.0
    @State private var heightInc = 1.0
    @State private var heightText = "Height 175 cm"
    
   
    
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
        
    height = heightCm / 100
        result = Double(weight) / (height * height)

        
    }
    
    func heightValue() {
        if heightType == "Inch" {
            heightCm = 190
        } else {
            heightCm = 170
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
                        heightType = "Inch"
                        
                        sliderStart = 40.0
                        sliderEnd = 90.0
                        heightInc = 0.1
                        
                        heightCm = heightCm * 0.3937
                        
                        
                        
                        
                    }
                        .frame(width: 70.0, height: 60.0)
                        
                        
                        .background(inchButtonColor)
                    Spacer()
                    Button ("cm") {
                        cmButtonColor = activeButtonColor
                        inchButtonColor = passiveButtonColor
                        heightType = "cm"
                        
                        sliderStart = 120.0
                        sliderEnd = 230.0
                        heightInc = 1.0
                        
                        heightCm = heightCm / 0.3937
                        
                    }
                        
                        .frame(width: 70.0, height: 60.0)
                        .background(cmButtonColor)
                    
                    Spacer()
                    Button ("Lbs") {
                        LbsButtonColor = activeButtonColor
                        kgButtonColor = passiveButtonColor
                        weightType = "kg"
                    }
                        
                        .frame(width: 70.0, height: 60.0)
                        .background(LbsButtonColor)
                    Spacer()
                    Button ("kg") {
                        kgButtonColor = activeButtonColor
                        LbsButtonColor = passiveButtonColor
                        weightType = "Lbs"
                    }
                        
                        .frame(width: 70.0, height: 60.0)
                        .background(kgButtonColor)
                    Spacer()
                        .frame(width: 30.0)
                    
                    
                }.font(.title)
                    .foregroundColor(Color.white)
                
                
                
                
             
            
           
                
                
                
                VStack(alignment: .center) {
                    HStack{
                       Text("Height \((heightCm)) \(heightType)")
                  }.foregroundColor(.white).font(.title)
                    
                    
                    
                    
                    
                    Slider(
                        value: $heightCm,
                        in: sliderStart...sliderEnd ,
                        step: heightInc
                    )
                    
                    
                }
                .frame(width: 332.0, height: 150.0)
                
                .background(.gray)
                
                
           
                
               
                HStack{
                    Spacer()
                    VStack{
                        Text("Weight")
                            
                        Text(String(weight))
                            
                        
                        HStack{
                            Button("-") {
                                weight -= 1
                            }
                                
                            
                            Button("+") {
                                weight += 1
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


       
        
       
