
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func jugar(_ sender: UIButton) {
        img1.image = UIImage(named: "1")
        img2.image = UIImage(named: "2")
    }
}

