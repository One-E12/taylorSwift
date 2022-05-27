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

func makeToppingPeperoBody(length: Int, topping: String) {
    for drawtopping in 1...length {
        if drawtopping % 2 != 0 {
            print(topping + peperoBodyComponent )
        } else {
            print(" " + peperoBodyComponent + topping)
        }
    }
}

func makeNudePeperobody(length: Int) {
    peperoBodyComponent = "|0|"
    for _ in 1...length {
        print(" " + peperoBodyComponent)
    }
}

func makeNormalPepero(bodyLength: Int, barLength: Int) {
    makeNormalPeperoBody(length: bodyLength)
    makePeperoBar(length: barLength)
}

func makeToppingPepero(topping: String, bodyLength: Int, barLength: Int) {
    makeToppingPeperoBody(length: bodyLength, topping: topping)
    makePeperoBar(length: barLength)
}

func makeNudePepero(bodylength: Int, barLength: Int) {
    makeNudePeperobody(length: bodylength)
    makePeperoBar(length: barLength)
}

makeNormalPepero(bodyLength: 10, barLength: 4)
print("_____________________________________")
makeToppingPepero(topping: "&", bodyLength: 12, barLength: 4)
print("_____________________________________")
makeToppingPepero(topping: "#", bodyLength: 12, barLength: 6)
print("_____________________________________")
makeNudePepero(bodylength: 6, barLength: 4)
