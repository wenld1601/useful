//
//  ViewController.swift
//  Weekly Calendar
//
//  Created by weng Higgins on 2019-10-25.
//  Copyright © 2019 higginsweng. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    
    @IBOutlet weak var weekdateLabel: UILabel!
    
    var currentYear = Calendar.current.component(.year, from: Date())
//    var currentMonth = Calendar.current.component(.month, from: Date())
    var currentWeek = Calendar.current.component(.weekOfYear, from: Date())
//    var currentDate = Calendar.current.component(.day, from: Date())
//    var currentWeekday = Calendar.current.component(.weekday, from: Date())
    var rightNow = Date()
    
    
    var Weeks = ["Week 1", "Week 2", "Week 3", "Week 4", "Week 5", "Week 6", "Week 7", "Week 8", "Week 9", "Week 10", "Week 11", "Week 12", "Week 13", "Week 14", "Week 15", "Week 16", "Week 17", "Week 18", "Week 19", "Week 20", "Week 21", "Week 22", "Week 23", "Week 24", "Week 25", "Week 26", "Week 27", "Week 28", "Week 29", "Week 30", "Week 31", "Week 32", "Week 33", "Week 34", "Week 35", "Week 36", "Week 37", "Week 38", "Week 39", "Week 40", "Week 41", "Week 42", "Week 43", "Week 44", "Week 45", "Week 46", "Week 47", "Week 48", "Week 49", "Week 50", "Week 51",  "Week 52"]
    
    @IBOutlet weak var weeklabel: UILabel!
    
    @IBOutlet weak var PrevWeek: UIButton!
    
    @IBOutlet weak var NextWeek: UIButton!
    
    
    @IBOutlet weak var SundayButton: UIButton!
    @IBOutlet weak var MondayButton: UIButton!
    @IBOutlet weak var TuesdayButton: UIButton!
    @IBOutlet weak var WednesdayButton: UIButton!
    @IBOutlet weak var ThursdayButton: UIButton!
    @IBOutlet weak var FridayButton: UIButton!
    @IBOutlet weak var SaturdayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUp(newformattedtartcurrentweek: formattedstartcurrentweek, newformattedendcurrentweek: formattedendcurrentweek)
        sevendaydate(currentdate: rightNow)
    }
    
    
    @IBAction func NextWeekButton(_ sender: Any) {
        let nextweek = rightNow + 3600*24*7
        rightNow = nextweek
        sevendaydate(currentdate: rightNow)
        
        let newformattedtartcurrentweek = newstartcurrentweek(updateNow: rightNow)
        let newformattedendcurrentweek = newendcurrentweek(updateNow: rightNow)
        currentWeek += 1
        if currentWeek == 53 {
            currentWeek = 1
            currentYear += 1
        }
        setUp(newformattedtartcurrentweek: newformattedtartcurrentweek, newformattedendcurrentweek: newformattedendcurrentweek)
    }
    
    
    @IBAction func PrevWeekButton(_ sender: Any) {
        let nextweek = rightNow - 3600*24*7
        rightNow = nextweek
        sevendaydate(currentdate: rightNow)
        
        let newformattedtartcurrentweek = newstartcurrentweek(updateNow: rightNow)
        let newformattedendcurrentweek = newendcurrentweek(updateNow: rightNow)
        
        currentWeek -= 1
        if currentWeek == 0 {
            currentWeek = 52
            currentYear -= 1
        }
        setUp(newformattedtartcurrentweek: newformattedtartcurrentweek, newformattedendcurrentweek: newformattedendcurrentweek)
    }
    
    
    
    func setUp(newformattedtartcurrentweek: String, newformattedendcurrentweek: String)
    {
        weeklabel.text = Weeks[currentWeek - 1] //+ "\(currentYear)"
        
        weekdateLabel.text = "\(newformattedtartcurrentweek)" + " ~ " + "\(newformattedendcurrentweek)"
        
//CalendarButton.reloadData()
        
//        print(currentDate)
//        print(currentWeek)
//        print(currentMonth)
//        print(currentYear)
//        print(currentWeekday)
        
//        let formatter = DateFormatter()
//        //formatter.dateFormat = "yyyy-MM-dd"
//        let newcalendar = Calendar.current
//        let rightNow = Date()
//        print (rightNow)
//
//        formatter.dateFormat = "dd"
//        let formattedRightNow = formatter.string(from: rightNow)
//        print("formattedRightnow" + formattedRightNow)
//
//        let nextweek = rightNow + 3600*24*7
//        print(nextweek)
//        let prevweek = rightNow - 3600*24*7
//        print(prevweek)
//        let weekInterval = newcalendar.dateInterval(of: .weekOfYear, for: rightNow)
//        let nextweekInterval = newcalendar.dateInterval(of: .weekOfYear, for: nextweek)
//        let prevweekInterval = newcalendar.dateInterval(of: .weekOfYear, for: prevweek)
//
//        let startcurrentweek = weekInterval!.start
//        let endcurrentweek = weekInterval!.end - 3600*24
//        let startnextweekInterval = nextweekInterval!.start
//        let endnextweekInterval = nextweekInterval!.end - 3600*24
//        let startprevweekInterval = prevweekInterval!.start
//        let endprevweekInterval = prevweekInterval!.end - 3600*24
//        print(weekInterval!.start)
//        print(weekInterval!.end)
//        print(startnextweekInterval)
//        print(endnextweekInterval)
//        print(startprevweekInterval)
//        print(endprevweekInterval)
//
//        let formattedendcurrentweek = formatter.string(from: endcurrentweek)
//        let formattedstartcurrentweek = formatter.string(from: startcurrentweek)
//        let formattedendnextweekInterval = formatter.string(from: endnextweekInterval)
//        let formattedendprevweekInterval = formatter.string(from: endprevweekInterval)
//        let formattedstartnextweekInterval = formatter.string(from: startnextweekInterval)
//        let formattedstartprevweekInterval = formatter.string(from: startprevweekInterval)
//
//        print(formattedstartnextweekInterval)
//        print(formattedendnextweekInterval)
//        print(formattedstartprevweekInterval)
//        print(formattedendprevweekInterval)
//        print(formattedendcurrentweek)
//        print(formattedstartcurrentweek)
//
    }
    
    func sevendaydate(currentdate: Date){
        
        let SundayDate = Sundaydate(startcurrentweek: currentdate)
        let MondayDate = Mondaydate(startcurrentweek: currentdate)
        let TuesdayDate = Tuesdaydate(startcurrentweek: currentdate)
        let WednesdayDate = Wednesdaydate(startcurrentweek: currentdate)
        let ThursdayDate = Thursdaydate(startcurrentweek: currentdate)
        let FridayDate = Fridaydate(startcurrentweek: currentdate)
        let SaturdayDate = Saturdaydate(startcurrentweek: currentdate)
        SundayButton.setTitle(SundayDate, for: .normal)
        MondayButton.setTitle(MondayDate, for: .normal)
        TuesdayButton.setTitle(TuesdayDate, for: .normal)
        WednesdayButton.setTitle(WednesdayDate, for: .normal)
        ThursdayButton.setTitle(ThursdayDate, for: .normal)
        FridayButton.setTitle(FridayDate, for: .normal)
        SaturdayButton.setTitle(SaturdayDate, for: .normal)
    }
    
    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 7
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let weekdaycell = collectionView.dequeueReusableCell(withReuseIdentifier: "weekdaycell", for: indexPath)
//
//        if let textLabel = weekdaycell.contentView.subviews[0] as? UILabel {
//            textLabel.text = "\(indexPath.row + 1)"
//        }
//
//        return weekdaycell
//    }
    
    

}

