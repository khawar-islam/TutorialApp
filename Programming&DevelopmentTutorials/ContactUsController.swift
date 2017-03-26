//
//  ContactUsController.swift
//  Programming&DevelopmentTutorials
//
//  Created by Khawar Islam on 12/07/2016.
//  Copyright © 2016 Khawar Islam. All rights reserved.
//

import UIKit
import MapKit

class ContactUsController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        let latitude: CLLocationDegrees = 41.036803
        let longitude: CLLocationDegrees = 28.986542
        let latDelta: CLLocationDegrees = 0.01
        let lonDelta: CLLocationDegrees = 0.01
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        let span: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        let region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        self.mapView.setRegion(region, animated: true)
        
        let annotation: MKPointAnnotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "Demo Location"
        annotation.subtitle = "234,Hall Street Karachi Gulshan Iqbal Nipa"
        
        self.mapView.addAnnotation(annotation)
        

 
//        
//        let swipeRight = UISwipeGestureRecognizer(target: self, action: "respond:")
//        swipeRight.direction = .Right
//        view.addGestureRecognizer(swipeRight)
//        
//        let swipeLeft = UISwipeGestureRecognizer(target: self, action: "respond:")
//        swipeLeft.direction = .Left
//        view.addGestureRecognizer(swipeLeft)
//        
//        let swipeUp = UISwipeGestureRecognizer(target: self, action: "respond:")
//        swipeUp.direction = .Up
//        view.addGestureRecognizer(swipeUp)
//        
//        let swipeDown = UISwipeGestureRecognizer(target: self, action: "respond:")
//        swipeDown.direction = .Down
//        view.addGestureRecognizer(swipeDown)

    }
    
//    func respond(gesture : UISwipeGestureRecognizer)  {
//      if let swipeGesture = gesture as? UISwipeGestureRecognizer
//      {
//        switch swipeGesture.direction {
//        case UISwipeGestureRecognizerDirection.Right:
//            lblDirection.text="Right"
//        case UISwipeGestureRecognizerDirection.Left:
//            lblDirection.text="Left"
//            
//        case UISwipeGestureRecognizerDirection.Up:
//            lblDirection.text="UP"
//        case UISwipeGestureRecognizerDirection.Down:
//            lblDirection.text="Down"
//        
//        default:
//            break
//        }
//        
//       }
//    }
    

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
