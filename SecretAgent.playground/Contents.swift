import Foundation

func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func checkPassword(_ guess: String) -> String {
        guard guess == password else {
            return "Sorry. No hidden secrets here."
        }
        return secret
    }
    return checkPassword
}

func generateCombination(forRoom room: Int, usingFunction function: (Int) -> Int) -> (Int, Int, Int) {
    let firstCombo = function(room)
    let secondCombo = function(firstCombo)
    let thirdCombo = function(secondCombo)
    return (firstCombo, secondCombo, thirdCombo)
}
