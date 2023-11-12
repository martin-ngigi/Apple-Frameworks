//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Martin Wainaina on 12/11/2023.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject{
    var selectectFramework: Framework?{
        didSet{
            /// anytime the selected framework changes, make isShowingDetailView to true
            isShowingDetailView = true
        }
    }
    
    
    
    @Published var isShowingDetailView = false
    
    
}
