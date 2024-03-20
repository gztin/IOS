//
//  birthdayViewController.swift
//  LifeNumber-part2
//
//  Created by 陳宗廷 on 2024/3/19.
//

import UIKit

class birthdayViewController: UIViewController {

    @IBOutlet var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func showResult(_ coder: NSCoder) -> resultViewController? {
        let controller =  resultViewController(coder: coder)
        controller?.birthday = datePicker.date
        return controller

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
