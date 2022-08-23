//
//  ContentView.swift
//  myDiary
//
//  Created by basmah saad on 23/08/2022.
//

import SwiftUI

struct ContentView: View {
    let colors = [Color.blue.opacity(0.4), Color.indigo.opacity(0.4), Color.red.opacity(0.4), Color.yellow.opacity(0.4)]
    @State var NOte = ""
    @State var selected : Color = Color.pink
    var body: some View {
        NavigationView{
            ZStack{
                Color.green.opacity(0.2)
                    .ignoresSafeArea()
                VStack{
                
                    Text("Choose your favorite color")
                        .font(.system(size: 28))
                    HStack{
                    ForEach(colors,id:\.self){
                        color in
                        Circle()
                            .fill(color)
                            .frame(width: 85, height: 85)
                            .onTapGesture {
                            selected = color
                        }
                    }
                        //
                    }.padding()
                    Text("what do you want to write")
                        .font(.system(size:25))
                TextField("write here", text: $NOte)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    
                    
                    NavigationLink(destination: SecondView(myC: selected, myS: NOte)){
                        Text("Save")
                            .foregroundColor(.white)
                            .font(.system(size:32))
                            .frame(width: 200, height: 50)
                            .background(.green)
                            .cornerRadius(10)
                    }
                }
               //
            }
            .navigationTitle("My Diary")
        }
        //
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
            
    }
}
