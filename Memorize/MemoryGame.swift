import Foundation

struct MemoryGame<CardContent> {
   private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfParisOfCards: Int, createCardContent: (Int) -> CardContent ) {
       cards = Array<Card>()
        for pairIndex in 0..<numberOfParisOfCards {
            let cardContent = createCardContent(pairIndex)
            cards.append(Card( content: cardContent))
        }
    }
    
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
