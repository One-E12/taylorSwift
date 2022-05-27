import Foundation

var peperoBodyComponent = "***"
var peperoToppingComponent = "&"
let peperoBarComponent = " | |"

func makeNormalPeperoBody(length: Int) {
    for _ in 1...length {
        print(" " + peperoBodyComponent)
    }
}

func makePeperoBar(length: Int) {
    for _ in 1...length {
        print(peperoBarComponent)
    }
}

func makeNormalPepero(bodyLength: Int, barLength: Int) {
    makeNormalPeperoBody(length: bodyLength)
    makePeperoBar(length: barLength)
}


