import Foundation

func dailyRateFrom(hourlyRate: Int) -> Double {
    Double(hourlyRate) * 8.0
}

func monthlyRateFrom(hourlyRate: Int, withDiscount: Double) -> Double {
    let monthlyRate = dailyRateFrom(hourlyRate: hourlyRate) * Double(22) * Double(1 - withDiscount / 100)
    return monthlyRate.rounded()
}

func workdaysIn(budget: Int, hourlyRate: Int, withDiscount: Double) -> Double {
    let workdays = Double(budget) / (dailyRateFrom(hourlyRate: hourlyRate) * (1 - withDiscount / 100))
    return workdays.rounded(.down)
}
