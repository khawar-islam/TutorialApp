
//

import UIKit

class WebArticleViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    var webviewarticles = UIWebView()
    var receiveLink : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     webView.delegate = self
       // self.webviewarticles = self.webView

        // Do any additional setup after loading the view.
        
        let url = URL (string: self.receiveLink!);
        let requestObj = URLRequest(url: url!);
        webView.loadRequest(requestObj)
        
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
