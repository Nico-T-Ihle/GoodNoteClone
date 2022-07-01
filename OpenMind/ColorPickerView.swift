//
//  ColorPickerView.swift
//  OpenMind
//
//  Created by Nico Ihle on 01.07.22.
//

import Foundation
import SwiftUI

struct ColorPicerView: View {
    let colors = [Color.red, Color.orange, Color.green, Color.blue, Color.purple]
    @Binding var selectedColor: Color
    
    var body: some View{
        HStack{
            ForEach(colors, id: \.self) { color in
                Image(systemName: selectedColor == color ?
                      Contants.Icons.recordCircleFill:
                        Contants.Icons.circleFill)
                .foregroundColor(color)
                .font(.system(size: 16))
                .clipShape(Circle())
                .onTapGesture {
                    selectedColor = color
                }
            }
        }
    }
}

struct ColorPicerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicerView(selectedColor: .constant(.blue))
    }
}
