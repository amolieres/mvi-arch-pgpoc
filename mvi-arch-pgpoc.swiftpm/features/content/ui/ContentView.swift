import SwiftUI

struct ContentView: View {
    
    @ObservedObject var vm: ContentViewModel
        
    @State private var query: String = ""
        
    init(viewModel: ContentViewModel) {
        self.vm = viewModel
    }
        

    
    
    var body: some View {
        VStack {
            Image(systemName: vm.imageName)
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(vm.grettingText)
        }
    }
}


