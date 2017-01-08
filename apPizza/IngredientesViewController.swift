//
//  IngredientesViewController.swift
//  apPizza
//
//  Created by Tripledobleu on 08/01/17.
//  Copyright © 2017 Tripledobleu. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController  {

    @IBOutlet weak var picker: UIPickerView!
    var pickerData :  [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Connect data:

        
        // Input data into the Array:
        pickerData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
