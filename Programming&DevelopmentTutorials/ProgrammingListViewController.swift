

import UIKit

class ProgrammingListViewController: UIViewController,UITableViewDataSource,UISearchBarDelegate,UISearchDisplayDelegate {

    @IBOutlet weak var tableProgrammingList: UITableView!
    
  //  let url = [("http://developersociety.com/Apple%20tutorial/MVC.html")]
   
   // var uurl = [UIWebView]()
    
     var linkToSend = ""
    
   
    let DevList = [("Php"),("Swift"),("iOS Development"),("Android App"),("C# Windows Form"),("C# ASP.Net MVC"),("Java"),("Object Oriented Programming")]
    
    let devListimages=[UIImage(named:"php"),UIImage(named:"swift"),UIImage(named:"mobile"),
                       UIImage(named:"android"),UIImage(named:"windows"),UIImage(named:"ASP"),UIImage(named:"Java"),UIImage(named:"windows")]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DevList.count
        

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell=tableProgrammingList.dequeueReusableCell(withIdentifier: "ppp", for: indexPath) as! ProgrammingListTableViewCell
       
        cell.pImage.image=devListimages[indexPath .row]
        cell.pLabel.text=DevList[indexPath .row]
        
        return cell
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "articles" {
            
            let vc = segue.destination as! WebArticleViewController
            
            vc.receiveLink = self.linkToSend
 
            
        }
    }


    
    func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath)
    {
        
        if indexPath.row == 0 {
            
            self.linkToSend = "http://www.developersociety.com/php-mysql-make-dynamic-invoice-complete-tuotrial"
        }
        if indexPath.row == 1 {
            self.linkToSend = "http://developersociety.com/Apple%20tutorial/Swift.html"
            
        }
        if indexPath.row == 2 {
            
            self.linkToSend = "http://www.developersociety.com/developing-ios-9-apps-with-swift-table-view/"
        }
        if indexPath.row == 3 {
            
            self.linkToSend = "http://www.developersociety.com/android-studio-intellij-idea"
        }
        if indexPath.row == 4 {
            
            self.linkToSend = "http://www.developersociety.com/global-connection-in-windows-form-application/"
        }
        if indexPath.row == 5 {
            
            self.linkToSend = "http://www.developersociety.com/crud-function-in-asp-net-mvc"
        }
        if indexPath.row == 6 {
            
            self.linkToSend = "http://www.developersociety.com/java-programming-language-history/"
        }
        if indexPath.row == 7 {
            
            self.linkToSend = "http://www.developersociety.com/method-overriding-in-java"
        }
        
        self.performSegue(withIdentifier: "articles", sender: self)
        //        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
