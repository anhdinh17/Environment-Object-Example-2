//
//  ContentView.swift
//  EnvExample
//
//  Created by Anh Dinh on 8/6/23.
//

import SwiftUI

// @MainActor means whatever is done in here is done on the Main Thread.
// @MainActor ko nhat thiet phai co trong tat ca cac truong hop
@MainActor class DataExample: ObservableObject {
    @Published var text = "Counter"
    @Published var counter = 0
}

struct ContentView: View {
    
    // Have to have this at the View where we want to start injection.
    // Tất cả những thằng nào inject .environment(data) thì đều xài chung thằng data.
    // Thay đổi data trong bất kì View nào cũng sẽ ảnh hưởng tới data ở những nơi còn lại.
    @StateObject var data = DataExample()

    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    TextBlockView()
                    SampleView()
                }
                
                Spacer()
                
                NavigationLink(destination: SecondScreen()) {
                    Text("Go To Next Screen")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(width: 260, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        // inject here so all the view inside NavigationStack can have access to 'data' even when we navigate to other screens.
        .environmentObject(data)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
