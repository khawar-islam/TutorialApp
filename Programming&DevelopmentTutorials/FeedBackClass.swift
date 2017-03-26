//
//  FeedBackClass.swift
//  Programming&DevelopmentTutorials
//
//  Created by Khawar Islam on 07/07/2016.
//  Copyright © 2016 Khawar Islam. All rights reserved.
//

import UIKit

class FeedBackClass: UIViewController {

    //@IBOutlet weak var ScrollView: UIScrollView!
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  // ScrollView.contentSize.height=1000
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
