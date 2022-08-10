// Enum

import Darwin
enum AppleDevice{
    case iPhone
    case iPad
    case AppleWatch
    case AppleTV
}
print(AppleDevice.iPhone)

var dispositivo = AppleDevice.AppleTV
var dispositivo2: AppleDevice = . iPad

enum AppleDevice2{
    case iPhone(String)
    case iPad(String)
    case AppleWatch(String)
    case AppleTV
}

var dispositivo3: AppleDevice2 = .iPhone("12")

switch(dispositivo2){
case .iPhone: fallthrough
case .iPad: print("IOS")
case .AppleTV: print("TVIOS")
case.AppleWatch: print("WatchOS")
    
//default:print(" Dispositivo Inválido")
}

