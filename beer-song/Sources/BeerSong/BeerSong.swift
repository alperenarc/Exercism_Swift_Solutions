class BeerSong {

    var numberOfBeerBottles: Int

    init(numberOfBeerBottles: Int) {
        self.numberOfBeerBottles = numberOfBeerBottles
    }

    func generateVersesOfBeerSong() -> String {
        var songWords = ""
        while numberOfBeerBottles > -1 {
            switch numberOfBeerBottles {
            case 0:
                songWords += "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
            case 1:
                songWords += "1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\n\n"
            default:
                songWords += "\(numberOfBeerBottles) bottles of beer on the wall, \(numberOfBeerBottles) bottles of beer.\nTake one down and pass it around, \(numberOfBeerBottles - 1) bottle\((numberOfBeerBottles - 1 == 1 ? "" : "s")) of beer on the wall.\n\n"
            }
            numberOfBeerBottles -= 1;
        }
        return songWords
    }
}
