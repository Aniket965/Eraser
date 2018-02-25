import Darwin

// Commands
enum AnsiCommand {
    case clearline
    case moveCursorUp
}

//Get there ansiCode
extension AnsiCommand {
    var ansicode : String {
        switch self {
        case .clearline:
            return "2K".toANSI()
        case .moveCursorUp:
            return "1A".toANSI()
        }
    }
}
// Converts String to ANSI command
extension String {
    public func toANSI() -> String {
        return "\u{001B}[" + self
    }
}

let clearCmd:AnsiCommand = .clearline
let moveUpCmd:AnsiCommand = .moveCursorUp

public func UpdateCLI(msg:String,delay:UInt32) {
    print("\(moveUpCmd.ansicode)\(clearCmd.ansicode)\(msg)")
    usleep(delay)
}
public func ClearCLI() {
    print("\(moveUpCmd.ansicode)\(clearCmd.ansicode)")
}

public func rUpdateCLI(msg:String,delay:UInt32) -> String {
    return "\(moveUpCmd.ansicode)\(clearCmd.ansicode)\(msg)"
}
public func rClearCLI() -> String {
    return "\(moveUpCmd.ansicode)\(clearCmd.ansicode)"
}