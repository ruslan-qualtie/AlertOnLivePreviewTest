import SwiftUI

struct ContentView: View {
    var body: some View {
        Alerts(message: "App Alert")
    }
}

struct Alerts: View {
    var message: String
    var body: some View {
        Text("Where is the Alert?")
            .alert(isPresented: .constant(true)) {
                Alert(title: Text("Hello"), message: Text(message))
            }
    }
}

#if DEBUG
struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts(message: "Preview Alert")
    }
}
#endif
