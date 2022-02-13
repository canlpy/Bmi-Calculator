//
//  ContentView.swift
//  Bmi
//
//  Created by Can on 11.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sexuality = ""
    @State private var heightType = ""
    @State private var weightType = ""
    @State private var height : Double = 130.0
    @State private var weight = 60
    @State private var age = 30
    @State private var result : Double = 0.0
    @State private var heightCm = 160.0
    @State private var isEditing = false
    
    func calculate()  {
        
    height = heightCm / 100
        result = Double(weight) / (height * height)

        
    }
    
    
    
    
    
    
    
    var body: some View {
        ZStack(alignment: .bottom ) {
            VStack{
                Spacer()
                Text("Bmi Calculator")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
               
                HStack {
                    
                Spacer()
            Text("Male")
                
                .frame(width: 150.0, height: 150.0).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                
                
            Spacer()
            Text("Female")
                .frame(width: 150.0, height: 150.0).cornerRadius(30).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                
                Spacer()
            
            }.font(.largeTitle)
                    .foregroundColor(Color.white)
                    
                
                HStack(alignment: .center)
                {
                    Spacer()
                        .frame(width: 30.0)
                    Text("Inch")
                        .frame(width: 70.0, height: 60.0)
                        
                        
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("cm")
                        
                        .frame(width: 70.0, height: 60.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    Text("Lbs")
                        
                        .frame(width: 70.0, height: 60.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("kg")
                        
                        .frame(width: 70.0, height: 60.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(width: 30.0)
                    
                    
                }.font(.title)
                    .foregroundColor(Color.white)
                
                VStack(alignment: .center) {
                    HStack{
                       Text("Height \(Int(heightCm)) cm")
                  }.foregroundColor(.white).font(.title)
                    
                    Slider(
                        value: $heightCm,
                            in: 120...230 ,
                        step: 1
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
                    calculate()
                    
                   
                    
                }.font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .frame(width: 332.0, height: 60.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                
                Spacer()
                Text("Your Bmi is "  + String(format: "%.1f", result))
                    .font(.largeTitle)
                   
                    
                
                    
                Spacer()
                
                   
                
            }
           
            
            
            
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
