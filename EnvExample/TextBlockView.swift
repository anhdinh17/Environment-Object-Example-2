//
//  TextBlockView.swift
//  EnvExample
//
//  Created by Anh Dinh on 8/6/23.
//

import SwiftUI

struct TextBlockView: View {
    
    // access environment object
    // only need to declare it as type of DataExample
    @EnvironmentObject var data: DataExample
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 200, height: 60)
                .foregroundColor(.blue)
                .cornerRadius(8)
            
            Text("\(data.text) : \(data.counter)")
                .foregroundColor(.white)
        }
        .onTapGesture {
            data.counter += 1
        }
    }
}

struct TextBlockView_Previews: PreviewProvider {
    static var previews: some View {
        TextBlockView()
            .environmentObject(DataExample())
    }
}
