//
//  SecondPage.swift
//  Sheet
//
//  Created by Khaled Al-Mushaileh on 1/7/21.
//

import SwiftUI

struct SecondPage: View {
    
    @ObservedObject var env: Env
    @Environment(\.presentationMode) var presentation
    var body: some View {
        VStack{
            VStack(alignment: .center, spacing: 40 ){
                TextField("الاسم", text:$env.name)
                TextField("العمر", text:$env.age)
                TextField("الهاتف", text:$env.phone)
            }.padding()
            .font(.title)
            .multilineTextAlignment(.trailing)
            Button(action:{
                    presentation.wrappedValue.dismiss()},
                   label:{
                    Text("موافق")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue.opacity(0.7))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                   }
            )
        }
            
            
        }
        
    }


/*
struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
*/
