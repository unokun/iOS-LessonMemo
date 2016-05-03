//: Playground - noun: a place where people can play


import Foundation

extension String {
    func findAll(input: String) -> [String]? {
        do {
            let re = try NSRegularExpression(pattern: self, options: NSRegularExpressionOptions.CaseInsensitive)
            let matches = re.matchesInString(input, options: [], range:NSMakeRange(0, input.characters.count))
            var results: [String] = []
            for match in matches {
                results.append((input as NSString).substringWithRange(match.range))
            }
            return results
        } catch let error {
            print("\(error)")
            return nil
        }
    }
}
let input = "&l=99182670&m=99182671"
if let matches = "(\\d{8,})".findAll(input) {
    for match in matches {
        print(match)
    }
}

