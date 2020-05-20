import SwiftUI

struct PracticeView: View {
    @State private var isSelected = false
    @State private var count = 0
    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .cornerRadius(30.0)
                .padding()
                .shadow(radius: 30.0)
            HStack {
                Button(action: {
                    self.isSelected.toggle()
                    if self.isSelected {
                        self.count += 1
                    }
                    else{
                        self.count -= 1
                    }
                    
                }) {
                    if isSelected {
                        Image(systemName: "heart.fill")
                    }
                    else{
                       Image(systemName: "heart")
                        
                    }
                }
                .font(.largeTitle)
                Text(String(count))
                    .font(.largeTitle)
            }
            
            
            Text("venkata sudhakar")
                .foregroundColor(.red)
                .fontWeight(.medium)
                .font(.largeTitle)
                .shadow(color: .black, radius: 1.0, x: 2, y: 2)
        }
    }
}

struct PracticeView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeView()
    }
}
