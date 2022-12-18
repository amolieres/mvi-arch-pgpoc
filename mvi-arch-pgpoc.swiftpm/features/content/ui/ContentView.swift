import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var vm: ContentViewModel
        
    @State private var name: String = ""
        
    init(viewModel: ContentViewModel) {
        self.vm = viewModel
    }
        
    var body: some View {
        VStack {
            TextField(
                "type your name",
                text: $name,
                onCommit: {
                    self.vm.onEvent(ContentEvent.nameChanged(name: name))
                }
            )
            
            Image(systemName: vm.state.imageName)
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(vm.state.grettingText)
        }
    }
}


struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())
    }
}
