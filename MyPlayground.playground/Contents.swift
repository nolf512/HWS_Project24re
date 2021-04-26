import UIKit

var cf = Double(100)
var riskFreeRate = Double(0.03)
var years = Double(10)
var x = 1 + riskFreeRate
let result = cf * pow(x, years)

print("\(Int(cf))万円を\(Int(riskFreeRate*100))%で\((Int(years)))年間運用すると\(result)円になる")

print("---------------------------")

var g = Double(0.02)
var d = Double(100)
var p = Double(0.1)
var ddm = d / (p - g)
let stockValueation = ddm

print("配当成長率: \(Int(g * 100))%")
print("来期の配当: \(Int(d))円")
print("株式基本コスト: \(Int(p * 100))%")
print("理論株価（株式評価額）: \(Int(stockValueation))円")

print("-------------------")

var fcf = Double()
var interest = Double()
var divident = Double()
var debtCost = Double()
var stockCost = Double()

let debtValue = interest / debtCost
let stockValue = divident / stockCost

let wacc = debtValue / (debtValue + stockValue) * debtCost + stockValue / (debtValue + stockValue)

let corporateValueEvaluation1 = debtValue + stockValue
let corporateValueEvaluation2 = fcf / wacc


print("売上高営業利益FCF: \(fcf)")
print("利子: \(interest)")
print("配当: \(divident)")
print("負債コスト: \(debtCost)")
print("株式コスト: \(stockCost)")
print("負債価値: \(debtValue)")
print("株式価値: \(stockValue)")
print("WACC: \(wacc)")
print("企業価値評価額(負債価値＋株式価値): \(corporateValueEvaluation1)")
print("企業価値評価額(FCF/WACC): \(corporateValueEvaluation2)")


