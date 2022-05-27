import Foundation

var peperoBodyComponent = "***"
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

func makeToppingPeperoBody(length: Int, topping: String) {
    for _ in 1...length {
        if length/2 != 0 {
            print(topping + peperoBodyComponent)
        } else {
            print(peperoBodyComponent + topping)
        }
    }
}

func makeToppingPepero(topping: String, bodyLength: Int, barLength: Int) {
    makeToppingPeperoBody(length: bodyLength, topping: topping)
    makePeperoBar(length: barLength)
}

