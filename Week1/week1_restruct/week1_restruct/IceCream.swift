import Foundation

let bodyComponent: String = "*"
let spaceForBarLine: String = " "
let spaceForBarLineLength: Int = 4
let bodyLineLength: Int = 11

func drawIceCreamBody(bodyLength: Int) {
    for _ in 1...bodyLength {
        drawIceCreamBodyLine()
    }
}

func drawIceCreamBodyLine() {
    for _ in 1...bodyLineLength {
        print(bodyComponent, terminator: "")
    }
    print("")
}

func drawIceCreamBar(barLength: Int) {
    for _ in 1...barLength {
        for _ in 1...spaceForBarLineLength {
            print(spaceForBarLine,terminator: "")
        }
        print("| |")
    }
}

func drawIceCream(bodyLength: Int, barLength: Int) {
    drawIceCreamBody(bodyLength: bodyLength)
    drawIceCreamBar(barLength: barLength)
}

drawIceCream(bodyLength: 8, barLength: 4)
