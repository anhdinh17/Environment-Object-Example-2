//
//  SecondScreen.swift
//  EnvExample
//
//  Created by Anh Dinh on 12/5/23.
//

import SwiftUI

struct SecondScreen: View {
    
    @EnvironmentObject var data: DataExample
    
    var body: some View {
        VStack {
            Text("\(data.counter)")
            
            Button {
                // increase "counter" sẽ thay đổi "counter" trong ViewModel cũng như thay đổi "counter" trong "data" ở trang trước
                data.counter += 1
            } label: {
                Text("Increase Counter")
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            NavigationLink {
                ThirdScreen()
            } label: {
                Text("Go to 3rd screen")
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
            .environmentObject(DataExample())
    }
}
