

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    

  //  @IBOutlet weak var labeltext:UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var mainPage=[("App Introduction"),("Tutorials"),("Vidoes"),("My Profile"),("Share"),("Our Location"),("Contact Us")]
    
    var images=[UIImage(named: "home"),UIImage(named: "tut"),UIImage(named: "youtube"),UIImage(named: "feed"),UIImage(named: "website"),UIImage(named: "map"),UIImage(named: "symbol")]
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
return mainPage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Custome
        
        cell.photo.image=images[indexPath .row]
        cell.name.text=mainPage[indexPath .row]
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             
        if segue.identifier == "programmingSegue"
        {
            if let destination = segue.destination as? ProgrammingListViewController
            {
                
                let path = tableView.indexPathForSelectedRow
                _ = tableView.cellForRow(at: path!)
                
                
                
 
            }
            
            
        }
        
        else if segue.identifier == "SendDataWeb"
        {
            if let destination = segue.destination as? WebViewController
            {
                let  path = tableView.indexPathForSelectedRow
                _=tableView.cellForRow(at: path!)
                
            }
            
        }
        
        else if segue.identifier == "contactUs"
        {
            if let destination = segue.destination as? ContactUsController
            {
            
             let path=tableView.indexPathForSelectedRow
                _=tableView.cellForRow(at: path!)
            }
        }
        
        else if segue.identifier == "Feedback"
        {
            if let destination = segue.destination as? FeedBackClass
            {
                
                let path=tableView.indexPathForSelectedRow
                _=tableView.cellForRow(at: path!)
            }
        }

        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _ = tableView.indexPathForSelectedRow!
     
        if indexPath.row == 0
        {
        
            let alertController = UIAlertController(title: "Hello Students && Developers", message:
                "The app is design for Students and Developers who is new in programming the app consists of all types of tutorials and video articles like Web, Android,ASP.NET MVC, Windows Form and etc.", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
            
        }

        
        
        else if indexPath.row == 1
        {
            
      if let _ = tableView.cellForRow(at: indexPath) {
            self.performSegue(withIdentifier: "programmingSegue", sender: self)
            }
        }
        
        else if indexPath.row == 2
        {
            
            if let _ = tableView.cellForRow(at: indexPath) {
                self.performSegue(withIdentifier: "Feedback", sender: self)
            }
        }
        else if indexPath.row == 3
        {
            
            if let _ = tableView.cellForRow(at: indexPath) {
                self.performSegue(withIdentifier: "SendDataWeb", sender: self)
            }
        }
            
            
        else if indexPath.row == 4
        {
            let vc = UIActivityViewController(activityItems:["Share"] , applicationActivities: nil)
          self.present(vc, animated: true, completion: nil)
        
        }

        
        else if indexPath.row == 5
        {
            if let _ = tableView.cellForRow(at: indexPath) {
                self.performSegue(withIdentifier: "contactUs", sender: self)
            }
        
        }
        else if indexPath.row == 6
        {
            if let _ = tableView.cellForRow(at: indexPath) {
                self.performSegue(withIdentifier: "Feedback", sender: self)
            }
            
        }

        
        
        
 
   }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   }

