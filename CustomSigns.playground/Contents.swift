import Foundation

let birthday = "Birthday"
let valentine = "Valentine's Day"
let anniversary = "Anniversary"

let space: Character = " "
let exclamation: Character = "!"

func buildSign(for what: String, name: String) -> String {
    "Happy" + String(space) + what + String(space) + name + String(exclamation)
}

func graduationFor(name: String, year: Int) -> String {
    "Congratulations" + String(space) + name + String(exclamation) + "\n" + "Class of" + String(space) + String(year)
}

func costOf(sign: String) -> Int {
    let letterCount = sign.count
    let basePrice = 20
    return letterCount * 2 + basePrice
}
