//
//  ViewController.swift
//  LineChart
//
//  Created by weng Higgins on 2019-11-11.
//  Copyright © 2019 higginsweng. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {

    @IBOutlet weak var lineChartView: LineChartView!
    
    
    
    @IBAction func randomize(_ sender: Any) {
        let count = Int(arc4random_uniform(20) + 3)
        print(count)
        setChartValues(count)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            let values = (0..<7).map {(i) -> ChartDataEntry in
                let val = Double(arc4random_uniform(UInt32(7))+3)
                return ChartDataEntry(x: Double(i), y: val)
            }

            let set1 = LineChartDataSet(entries: values, label: "DataSet 1")
            let data = LineChartData(dataSet: set1)

            lineChartView.data = data
    }
    
    func setChartValues(_ count : Int = 20){
        let values = (0..<count).map {(i) -> ChartDataEntry in
            let val = Double(arc4random_uniform(UInt32(count))+3)
            return ChartDataEntry(x: Double(i), y: val)
        }

        let set1 = LineChartDataSet(entries: values, label: "DataSet 1")
        let data = LineChartData(dataSet: set1)

        self.lineChartView.data = data
    }


}
