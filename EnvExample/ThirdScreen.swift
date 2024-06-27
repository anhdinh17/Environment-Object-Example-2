//
//  ThirdScreen.swift
//  EnvExample
//
//  Created by Anh Dinh on 4/22/24.
//

import SwiftUI

struct ThirdScreen: View {
    @EnvironmentObject var data: DataExample
    
    var body: some View {
        VStack {
            Text("Third Screen Score: \(data.counter)")
            
            Button {
                data.counter += 1
            } label: {
                Text("Increase Counter")
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}

#Preview {
    ThirdScreen()
        .environmentObject(DataExample())
}
