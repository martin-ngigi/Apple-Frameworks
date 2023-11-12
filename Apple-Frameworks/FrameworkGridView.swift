//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Martin Wainaina on 12/11/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    /// 3 columns
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                    }
                }
                .navigationTitle("🍎 Frameworks ")
            }
        }
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5) /// Scale to 60 % for large names
            
        }
        .padding()
    }
}