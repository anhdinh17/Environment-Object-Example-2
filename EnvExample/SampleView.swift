//
//  SampleView.swift
//  EnvExample
//
//  Created by Anh Dinh on 8/6/23.
//

import SwiftUI

struct SampleView: View {
    
    // Access to Environment object
    @EnvironmentObject var data: DataExample
    
    var body: some View {
        Text("\(data.text) : \(data.counter)")
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
            .environmentObject(DataExample())
    }
}
