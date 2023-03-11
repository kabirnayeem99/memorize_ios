import SwiftUI


func makeCardContent(index: Int) -> String {
    "🌱"
}

class EmojiMemoryGame {
    
   static private let emojis = ["📱", "💻", "🖥", "🖨", "📷", "📸", "🎥", "📹", "📼", "🔍",
                  "🔎", "💡", "🔦", "🕯", "💰", "💳", "💎", "🎁", "🎈", "🎉",
                  "🎊", "🎂", "🍰", "🍭", "🍪", "🍩", "🍫", "🍿", "🍔", "🍟",
                  "🍕", "🌭", "🥪", "🥙", "🌮", "🌯", "🍜", "🍲", "🍛", "🍝",
                  "🍠", "🍤", "🍣", "🍱", "🍢", "🍧", "🍦", "🍨", "🍮", "🍯",
                  "🍼", "☕️", "🍵", "🥤", "🍶", "🍺", "🍻", "🥂", "🍷", "🥃",
                  "🍸", "🍹", "🥄", "🍴", "🥢", "👓", "🕶", "🎓", "🧢", "👒",
                  "🎩", "👑", "💄", "💍", "🌂", "🧤", "🧣", "👔", "👕", "👖",
                  "🧥", "👗", "👘", "👙", "👚", "👛", "👜", "👝", "🎒", "👞",
                  "👟", "👠", "👡", "👢", "👑"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfParisOfCards: 4) {index in emojis[index]}
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    var cards: Array<MemoryGame<String>.Card>  {
        model.cards
    }
    
}


