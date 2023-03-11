
import SwiftUI

struct ContentView: View {
    let emojis = ["📱", "💻", "🖥", "🖨", "📷", "📸", "🎥", "📹", "📼", "🔍",
                  "🔎", "💡", "🔦", "🕯", "💰", "💳", "💎", "🎁", "🎈", "🎉",
                  "🎊", "🎂", "🍰", "🍭", "🍪", "🍩", "🍫", "🍿", "🍔", "🍟",
                  "🍕", "🌭", "🥪", "🥙", "🌮", "🌯", "🍜", "🍲", "🍛", "🍝",
                  "🍠", "🍤", "🍣", "🍱", "🍢", "🍧", "🍦", "🍨", "🍮", "🍯",
                  "🍼", "☕️", "🍵", "🥤", "🍶", "🍺", "🍻", "🥂", "🍷", "🥃",
                  "🍸", "🍹", "🥄", "🍴", "🥢", "👓", "🕶", "🎓", "🧢", "👒",
                  "🎩", "👑", "💄", "💍", "🌂", "🧤", "🧣", "👔", "👕", "👖",
                  "🧥", "👗", "👘", "👙", "👚", "👛", "👜", "👝", "🎒", "👞",
                  "👟", "👠", "👡", "👢", "👑"]

   @State var emojiCount: Int = 10;
    
    var body: some View {
  
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum:100))]){
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }.padding(.horizontal, 20)
                
            }
            
        
    }
    

}


struct CardView: View{
    @State var isFaceUp: Bool = true
    var content: String
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 12.0)
            if (isFaceUp) {
          
                 shape.strokeBorder(lineWidth: 2)
                    .foregroundColor(Color.green)
                 
                Text(content)
                    .foregroundColor(Color.green)
                    .font(.largeTitle)
           
            } else {
                
                shape
                    .fill()
                    .foregroundColor(Color.green)
                  
                
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }

    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14 Pro Max")
            .preferredColorScheme(.dark)
    }
}
