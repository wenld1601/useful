//
//  weeklycalendar.swift
//  Weekly Calendar
//
//  Created by weng Higgins on 2019-10-26.
//  Copyright © 2019 higginsweng. All rights reserved.
//

import Foundation
import UIKit


var newcalendar = Calendar.current
var rightNow = Date()
var formatter = DateFormatter()
var dayformatter = DateFormatter()


var daterange: DateInterval{
    formatter.dateFormat = "MM/dd"
    let weekInterval = newcalendar.dateInterval(of: .weekOfYear, for: rightNow)
    
    return weekInterval!
}

var weekInterval = daterange
let startcurrentweek = weekInterval.start
let endcurrentweek = weekInterval.end - 3600*24
let formattedendcurrentweek = formatter.string(from: endcurrentweek)
let formattedstartcurrentweek = formatter.string(from: startcurrentweek)

func newendcurrentweek (updateNow: Date) -> String{
    formatter.dateFormat = "MM/dd"
    let weekInterval = newcalendar.dateInterval(of: .weekOfYear, for: updateNow)
    let endcurrentweek = weekInterval!.end - 3600*24
    let formattedendcurrentweek = formatter.string(from: endcurrentweek)
    
    return formattedendcurrentweek
}


func newstartcurrentweek (updateNow: Date) -> String{
    formatter.dateFormat = "MM/dd"
    let weekInterval = newcalendar.dateInterval(of: .weekOfYear, for: updateNow)
    let startcurrentweek = weekInterval!.start
    let formattedstartcurrentweek = formatter.string(from: startcurrentweek)
    
    return formattedstartcurrentweek
}


func Sundaydate (startcurrentweek: Date) -> String{
    dayformatter.dateFormat = "dd"
    let weekInterval = newcalendar.dateInterval(of: .weekOfYear, for: startcurrentweek)
    let SundayDate = weekInterval!.start
    let formattedSundayDate = dayformatter.string(from: SundayDate)
    return formattedSundayDate
}
func Mondaydate (startcurrentweek: Date) -> String{
    dayformatter.dateFormat = "dd"
    let weekInterval = newcalendar.dateInterval(of: .weekOfYear, for: startcurrentweek)
    let MondayDate = weekInterval!.end - 3600*24*6
    let formattedMondayDate = dayformatter.string(from: MondayDate)
    return formattedMondayDate
}
func Tuesdaydate (startcurrentweek: Date) -> String{
    dayformatter.dateFormat = "dd"
    let weekInterval = newcalendar.dateInterval(of: .weekOfYear, for: startcurrentweek)
    let TuesdayDate = weekInterval!.end - 3600*24*5
    let formattedTuesdayDate = dayformatter.string(from: TuesdayDate)
    return formattedTuesdayDate
}
func Wednesdaydate (startcurrentweek: Date) -> String{
    dayformatter.dateFormat = "dd"
    let weekInterval = newcalendar.dateInterval(of: .weekOfYear, for: startcurrentweek)
    let WednesdayDate = weekInterval!.end - 3600*24*4
    let formattedWednesdayDate = dayformatter.string(from: WednesdayDate)
    return formattedWednesdayDate
}
func Thursdaydate (startcurrentweek: Date) -> String{
    dayformatter.dateFormat = "dd"
    let weekInterval = newcalendar.dateInterval(of: .weekOfYear, for: startcurrentweek)
    let ThursdayDate = weekInterval!.end - 3600*24*3
    let formattedThursdayDate = dayformatter.string(from: ThursdayDate)
    return formattedThursdayDate
}
func Fridaydate (startcurrentweek: Date) -> String{
    dayformatter.dateFormat = "dd"
    let weekInterval = newcalendar.dateInterval(of: .weekOfYear, for: startcurrentweek)
    let FridayDate = weekInterval!.end - 3600*24*2
    let formattedFridayDate = dayformatter.string(from: FridayDate)
    return formattedFridayDate
}
func Saturdaydate (startcurrentweek: Date) -> String{
    dayformatter.dateFormat = "dd"
    let weekInterval = newcalendar.dateInterval(of: .weekOfYear, for: startcurrentweek)
    let SaturdayDate = weekInterval!.end - 3600*24
    let formattedSaturdayDate = dayformatter.string(from: SaturdayDate)
    return formattedSaturdayDate
}
