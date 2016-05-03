//: Playground - noun: a place where people can play

import Foundation

var date = NSDate()
print("date: \(date)")

date = NSDate(timeIntervalSinceNow: 60)
print("date: \(date)")

print("timeIntervalSinceNow: \(date.timeIntervalSinceNow)")
print("timeIntervalSinceReferenceDate: \(date.timeIntervalSinceReferenceDate)")
print("description : \(date.description)")
let locale = NSLocale.currentLocale()
print("locale: \(locale)")
print("descriptionWithLocale: \(date.descriptionWithLocale(locale))")
print("locale: \(NSLocale.systemLocale())")

// NSLocale
// https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSLocale_Class/index.html#//apple_ref/occ/clm/NSLocale/localeWithLocaleIdentifier:
// iOSの言語設定に応じて設定されるNSLocaleの値について簡単にまとめてみる - Qiita http://qiita.com/nomadmonad/items/c3b6d04627df4d966f8e
//- initWithTimeIntervalSinceNow: - NSDate Class Reference https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSDate_Class/#//apple_ref/occ/instm/NSDate/descriptionWithLocale:
// NSDate Class Reference https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSDate_Class/
