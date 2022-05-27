import Foundation

let peperoBarComponent = " | |"

func makeNormalPeperoBody(length: Int, component: String) {
    for _ in 1...length {
        print(" " + component)
    }
}

func makePeperoBar(length: Int) {
    for _ in 1...length {
        print(peperoBarComponent)
    }
}

func makeToppingPeperoBody(length: Int, component: String, topping: String) {
    for drawtopping in 1...length {
        if drawtopping % 2 != 0 {
            print(topping + component)
        } else {
            print(" " + component + topping)
        }
    }
}

func makeNudePeperobody(length: Int, component: String) {
    for _ in 1...length {
        print(" " + component)
    }
}

func makepeperoInformation(bodyLength: Int, bodyComponent: String, topping: String, barLength: Int) {
    print("""
        길이: \(bodyLength)
        몸통: \(bodyComponent)
        토핑: \(topping)
        막대길이: \(barLength)
        
        """)
}

func makeNormalPepero(bodyLength: Int, bodyComponent: String, topping: String, barLength: Int) {
    makepeperoInformation(bodyLength: bodyLength, bodyComponent: bodyComponent, topping: topping, barLength: barLength)
    makeNormalPeperoBody(length: bodyLength, component: bodyComponent)
    makePeperoBar(length: barLength)
    print("")
}

func makeToppingPepero(bodyLength: Int, bodyComponent: String, topping: String, barLength: Int) {
    makepeperoInformation(bodyLength: bodyLength, bodyComponent: bodyComponent, topping: topping, barLength: barLength)
    makeToppingPeperoBody(length: bodyLength, component: bodyComponent, topping: topping)
    makePeperoBar(length: barLength)
    print("")
}

func makeNudePepero(bodyLength: Int, bodyComponent: String, topping: String, barLength: Int) {
    makepeperoInformation(bodyLength: bodyLength, bodyComponent: bodyComponent, topping: topping, barLength: barLength)
    makeNudePeperobody(length: bodyLength, component: bodyComponent)
    makePeperoBar(length: barLength)
    print("")
}

makeNormalPepero(bodyLength: 10, bodyComponent: "***", topping: "", barLength: 4)
makeToppingPepero(bodyLength: 12, bodyComponent: "***", topping: "&", barLength: 4)
makeToppingPepero(bodyLength: 12, bodyComponent: "***", topping: "#", barLength: 6)
makeNudePepero(bodyLength: 6, bodyComponent: "|0|", topping: "", barLength: 4)
