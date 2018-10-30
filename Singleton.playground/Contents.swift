import UIKit


// Singleton pattern:  A class that can be used anywhere within the application, but cannot be initialized..


// A normal class
class Course {
    
    var name : String
    
    init(name : String) {
        self.name = name
    }
}

let course1 = Course(name: "ObjC")

// We've created one object using above course class. And we can create as many objects as we want using above class.
// You cannot use above object in other view controllers.. u can use it in only current VC scope


// Here comes the singleton pattern

class Network {
    
    static let sharedNetwork = Network()
    
    var userDetails = (userName : "sagarsandy492", password : "kkkkkk")
    
    func doNetworking() {
        // Some network related code block
    }
    
    private init() {
        print("object created")
    }
}

Network.sharedNetwork.userDetails.userName     // results  --> sagarsandy492

// In VC2
Network.sharedNetwork.userDetails.userName = "ss492"  // username set to ss492 in VC2

// In VC3

Network.sharedNetwork.userDetails.userName     // results   --> ss492

// So u can use this singleton anywhere within the application. And we can modify it's values..

// Best example for singleton is "UserDefaults", "UIApplication", "NSNotificaions"  etc.. once they are set to some value u can use them anywhere..

// Remember singleton class cannot be initialized, while you are using it for the first time, the object will be created, the same object will be used throughout the aplication. So changing value at one place will effect in other places also. Becuase we are using same object in entire application.

