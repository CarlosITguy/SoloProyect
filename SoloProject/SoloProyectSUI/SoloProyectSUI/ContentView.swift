//
//  ContentView.swift
//  SoloProyectSUI
//
//  Created by Consultant on 12/12/22.
//

import SwiftUI
var redbackgorund : UIView = UIView(frame: .zero)

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe.central.south.asia.fill")
                .imageScale(.large)
                .foregroundColor(.pink)
            Text("Hello, world!")
                .foregroundColor(.red)
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/){
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }.foregroundColor(.green)
                .font(.subheadline)
                .font(.title)
            
            
        }
        .padding()
    }
   
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    func Rectangle(){
        print("rectagle")
    }
}
