//
//  SecondViewController.swift
//  Internal Messaging
//
//  Created by Justin on 6/9/16.
//  Copyright © 2016 Justin Gasta. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, theDelegate {
    
    var delegate: theDelegate?
    var messages: [String] = []

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var messageField: UITextField!
    
    
    @IBAction func sendPressed(sender: UIButton) {
        
//        if let delegate = self.delegate {
//            delegate.changeText(messageField.text!)
//        }
        
        delegate!.changeText(messageField.text!)
        
        //self.navigationController?.pushViewController(fvc, animated: true)
        
    }
    
    func changeText(message: String) {
        messages.append(message)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        textLabel.text = messages.last
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
