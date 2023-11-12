//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Martin Wainaina on 12/11/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafafriView = false

    var body: some View {
        VStack{
            
            HStack {
                Spacer()
                Button{
                    /// Dismiss the bottom sheet
                    isShowingDetailView = false
                    
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label)) /// label will white in dark mode and black in white mode
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                    
                }
            }
            .padding()
            
            Spacer()

            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafafriView = true
            } label: {
                AFButtonView(title: "Learn more")
            }
            .sheet(isPresented: $isShowingSafafriView) {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "safiribytes.com")!)
            }
            

        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}


