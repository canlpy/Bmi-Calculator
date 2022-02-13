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
    @State private var height : Int
    @State private var weight = 60
    @State private var age = 30
    @State private var result : Int
    
    func calculate()  {
        
        
        height =
        
        result = 
        
        
    }
    
    
    
    
    
    @State private var speed = 50.0
    @State private var isEditing = false
    
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
                        Text("Height")
                        Text(String(speed))
                        Text("Cm")
                    }.foregroundColor(.white).font(.title)
                    
                    Slider(
                        value: $speed,
                            in: 120...230
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
                Text("Your Bmi "  + String(result))
                
                    
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
