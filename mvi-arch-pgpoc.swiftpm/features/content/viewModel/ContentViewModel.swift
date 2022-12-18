//
//  File.swift
//  
//
//  Created by Antonin MOLIERES on 17/12/2022.
//

import Foundation

class ContentViewModel: ObservableObject {

    @Published var state: ContentState = ContentState()
    
    func onEvent(_ event: ContentEvent) {
        switch event {
        case .nameChanged(let name):
            state.grettingText = "Hello \(name)"
        }
    }
}
