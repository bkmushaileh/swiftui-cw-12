//
//  ContentView.swift
//  Sheet
//
//  Created by Khaled Al-Mushaileh on 1/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        MainView()
            .environmentObject(Env())
        
        }
            
        }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}

struct MainView: View {
    @EnvironmentObject var env: Env
    var body: some View {
        VStack{
            Text("مرحبا بك في الكويت تبرمج")
                .padding(.bottom, 50)
                .foregroundColor(.blue)
                .font(.title)
            
            Button(action: {
                env.isMentor.toggle()
            }) {
                Text("ادخل بياناتك")
                    .font(.title)
                    
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                
            }.sheet(isPresented: $env.isMentor){
                SecondPage(env: env)
            }
            if env.name != "" {
                HStack {
                    Spacer()
                    VStack(alignment: .trailing, spacing:10){
                        Text("الاسم \(env.name)" )
                        Text("العمر \(env.age)")
                        Text("الهاتف \(env.phone)")
                        
                    }.font(.title)
                    .padding()
                }
            }
        }
    }
}
