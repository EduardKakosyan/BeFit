//
//  FitnessRingCard.swift
//  BeFit
//
//  Created by Eduard Kakosyan on 2023-07-18.
//

import SwiftUI

struct FitnessRingCardView: View {
    var body: some View {
        VStack(spacing: 15) {
            Text("Progress")
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color("SecondaryShadows"))
            HStack(spacing: 20) {
                
                //Progress ring
                ZStack {
                    ForEach(rings.indices, id: \.self){index in
                        ZStack{
                            Circle()
                                .stroke(.gray.opacity(0.3), lineWidth: 10)
                            Circle()
                                .trim(from: 0, to: rings[index].progress / 100)
                                .stroke(rings[index].keyColor, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                .rotationEffect(.init(degrees: -90))
                        }
                        .padding(CGFloat(index) * 16)
                    }
                }
                .frame(width: 130, height: 130)
                
                VStack(alignment: .leading, spacing: 12){
                    ForEach(rings){ring in
                        Label {
                            HStack(alignment: .bottom, spacing: 6){
                                Text("\(Int(ring.progress))%")
                                    .font(.title3.bold())
                                
                                Text(ring.value)
                                    .font(.caption.bold())
                                    .foregroundStyle(ring.keyColor)
                            }
                        } icon: {
                            Group{
                                if ring.isText{
                                    Text(ring.keyIcon)
                                        .font(.title2)
                                } else {
                                    Image(systemName: ring.keyIcon)
                                        .font(.title2)
                                }
                            }
                            .frame(width: 30)
                        }
                    }
                }
                .padding(.leading, 10)
            }
            .padding(.top, 20)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 25)
        .background{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.ultraThinMaterial)
        }
    }
}

struct FitnessRingCardView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
