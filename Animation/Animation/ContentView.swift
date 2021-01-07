//
//  ContentView.swift
//  Animation
//
//  Created by Khaled Al-Mushaileh on 1/7/21.
//

import SwiftUI

struct ContentView: View {
    @State var width: CGFloat = 60
    @State var tapped : Bool = false
    var body: some View {
        Button(action: addItem){
            ZStack{
                Capsule().foregroundColor(.yellow)
                HStack{
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                
                if tapped{
                    Text("Add New Item")
                        .font(.custom("Avenir Next Demi Blod", size: 18))
                        
                        .foregroundColor(.white)
                       
                    Spacer()
                }
                }.offset(x: tapped ? 20 :0)
            }.frame(width: width, height: 60, alignment: .leading)
        }.animation(.spring())
    }
    func addItem() {
        tapped.toggle()
        if tapped{
            width = 300
        }
            else{
                width = 60
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
