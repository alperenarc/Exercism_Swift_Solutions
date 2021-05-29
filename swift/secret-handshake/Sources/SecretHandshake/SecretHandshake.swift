class SecretHandshake {
    var commands = [String]()
    init(_ number:Int){
        var binary = String(number, radix: 2)
        binary = checkValue(inputBinary: binary, secret: "wink")
        binary = checkValue(inputBinary: binary, secret: "double blink")
        binary =  checkValue(inputBinary: binary, secret: "close your eyes")
        binary =  checkValue(inputBinary: binary, secret: "jump")
        if binary == "1" {
            commands.reverse()
        }
    }
    func checkValue(inputBinary:String,secret:String) -> String {
        var binary = inputBinary
        if binary.count > 0 {
            if binary[binary.index(before: binary.endIndex)] == "1" {
                commands.append(secret)
            }
            binary.remove(at: binary.index(before: binary.endIndex))
        }
        return binary
    }
}
