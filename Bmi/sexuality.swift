//
//  sexuality.swift
//  Bmi
//
//  Created by Can on 1.03.2022.
//

import SwiftUI

struct sexView: View {
    
    
    @State var maleButtonCol: Color
    @State var femaleButtonCol: Color
    @State var activeButtonCol: Color
    @State var passiveButtonCol: Color
    @State var sex: String
    
    
    var body: some View {
        HStack {
            
            Spacer()
            Button("Male") {
                maleButtonCol = activeButtonCol
                femaleButtonCol = passiveButtonCol
                sex = "male"
                
                
            }.frame(width: 150.0, height: 150.0).background(maleButtonCol)
            
            
            
            
            
            
            Spacer()
            Button("Female") {
                femaleButtonCol = activeButtonCol
                maleButtonCol = passiveButtonCol
                sex = "female"
            }
            .frame(width: 150.0, height: 150.0).background(femaleButtonCol)
            
            Spacer()
            
        }.font(.largeTitle)
            .foregroundColor(Color.white)
    }
}
