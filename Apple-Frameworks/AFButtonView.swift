//
//  AFButtonView.swift
//  Apple-Frameworks
//
//  Created by Martin Wainaina on 12/11/2023.
//

import SwiftUI

struct AFButtonView: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(15)
    }
}

struct AFButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AFButtonView(title:"Sample title")
    }
}
