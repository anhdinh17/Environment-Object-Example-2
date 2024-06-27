//
//  ViewWithoutNavStack.swift
//  EnvExample
//
//  Created by Anh Dinh on 4/22/24.
//

import SwiftUI

struct ViewWithoutNavStack: View {
    @StateObject var data = DataExample()
    
    var body: some View {
        VStack {
            VStack {
                TextBlockView()
                SampleView()
            }
            
            Spacer()
            
            VStack {
                TextBlockView()
                SampleView()
            }
        }
        .environmentObject(data)
    }
}

#Preview {
    ViewWithoutNavStack()
}
