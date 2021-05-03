import UIKit



func calc(cf: Double, riskFreeRate: Double, years: Double){
    let x = 1 + riskFreeRate
    let result = cf * pow(x, years)
    print("\(Int(cf))万円を\(Int(riskFreeRate*100))%で\((Int(years)))年間運用すると\(result)円になる")
}



func stockValueationCalc(g: Double, d: Double, p: Double){
    let ddm = d / (p - g)
    let stockValueation = ddm
    
    print("配当成長率: \(Int(g * 100))%")
    print("来期の配当: \(Int(d))円")
    print("株式基本コスト: \(Int(p * 100))%")
    print("理論株価（株式評価額）: \(Int(stockValueation))円")
}



func sustainableGrowthRateCalc(reinvestmentRatio: Double, roe: Double){
    let sustainableGrowthRate = reinvestmentRatio * roe
    print("サステイナブル成長率\(sustainableGrowthRate * 100)%")
}



func corporateValueEvaluationCalc(fcf:Double, interest:Double, divident:Double, debtCost:Double, stockCost:Double){
    let debtValue = interest / debtCost
    let stockValue = divident / stockCost
    let wacc = (debtValue / (debtValue + stockValue) * debtCost) + (stockValue / (debtValue + stockValue) * stockCost)
    let corporateValueEvaluation1 = debtValue + stockValue
    let corporateValueEvaluation2 = fcf / wacc
    
    print("売上高営業利益FCF: \(fcf)")
    print("利子: \(interest)")
    print("配当: \(divident)")
    print("負債コスト: \(debtCost * 100)%")
    print("株式コスト: \(stockCost * 100)%")
    print("負債価値: \(debtValue)")
    print("株式価値: \(stockValue)")
    print("WACC: \(wacc * 100)%")
    print("企業価値評価額(負債価値＋株式価値): \(corporateValueEvaluation1)")
    print("企業価値評価額(FCF/WACC): \(corporateValueEvaluation2 * 100)")
    
}


stockValueationCalc(g: <#T##Double#>, d: <#T##Double#>, p: <#T##Double#>)
sustainableGrowthRateCalc(reinvestmentRatio: <#T##Double#>, roe: <#T##Double#>)
corporateValueEvaluationCalc(fcf: <#T##Double#>, interest: <#T##Double#>, divident: <#T##Double#>, debtCost: <#T##Double#>, stockCost: <#T##Double#>)
