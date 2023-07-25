//
//  ContentView.swift
//  BeFit
//
//  Created by Eduard Kakosyan on 2023-07-18.
//
import SwiftUICharts
import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators:  false){
            Home()
        }
        .frame(maxWidth: .infinity)
        .background{
            ZStack{
                VStack{
                    Circle()
                        .fill(Color.red) //background accent colors
                        .scaleEffect(0.6)
                        .offset(x: 20)
                        .blur(radius: 120)
                    
                    Circle()
                        .fill(Color.green)
                        .scaleEffect(0.6,anchor: .leading)
                        .offset(y: -20)
                        .blur(radius: 120)
                }
                Rectangle()
                    .fill(.ultraThinMaterial)
            }
            .ignoresSafeArea()
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
