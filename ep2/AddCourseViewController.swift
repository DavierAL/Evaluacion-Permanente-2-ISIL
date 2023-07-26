//
//  AddCourseViewController.swift
//  ep2
//
//  Created by user213622 on 5/12/23.
//

import UIKit

protocol refreshDataDelegate {
    func refreshData(course : String)
}

class AddCourseViewController: UIViewController {
    
    var delegate: refreshDataDelegate?
    
    
    @IBOutlet weak var courseName: UITextField!
    
    @IBAction func done(_ sender: Any) {
        
        delegate?.refreshData(course:  courseName.text ?? "")
        dismiss(animated: true, completion: nil)
        
       
    }
    
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation


}
