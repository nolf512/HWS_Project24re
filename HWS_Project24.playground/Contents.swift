import UIKit

let name = "name"

for letter in name {
    print("name: \(name)")
}
/*
 name: name
 name: name
 name: name
 name: name
 */

let letter = name[name.index(name.startIndex, offsetBy: 3)]
print(letter) //e


extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}

print(name[3]) //e

print("--------")

let password = "123456"
password.hasPrefix("123") //true
password.hasSuffix("345") //false
password.hasSuffix("6") //true

extension String {
    func deletePrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else {
            return self
        }
        return String(self.dropFirst(prefix.count))
    }
    func deleteSuffix(_ suffix: String) -> String {
        guard self.hasSuffix(suffix) else {
            return self
        }
        return String(self.dropLast(suffix.count))
    }
}

name.deletePrefix("n") //ame
name.deleteSuffix("e") //nam

let str = "I want to water"
print(str.capitalized) //I Want To Water

extension String {
    var capitalizedFirst: String {
        guard let firstLetter = self.first else { return "" }
        return firstLetter.uppercased() + self.dropFirst()
    }
}

let str2 = "hello world"
print(str2.capitalizedFirst) //Hello world

str2.contains("world") //true

let arr = ["hello", "world"]

extension String {
    func containsAny(of array: [String]) -> Bool {
        for item in array {
            if self.contains(item) {
                return true
            }
        }
        return false
    }
}

str2.containsAny(of: arr) //true
arr.contains(where: str2.contains) //true

let string = "This is a test string"
let attributes: [NSAttributedString.Key: Any] = [
    .foregroundColor: UIColor.white,
    .backgroundColor: UIColor.red,
    .font: UIFont.boldSystemFont(ofSize: 36)
]

let attributeString = NSAttributedString(string: string, attributes: attributes)
