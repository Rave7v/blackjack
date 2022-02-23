
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    var baraja = [#imageLiteral(resourceName: "1.png"),#imageLiteral(resourceName: "2.png"),#imageLiteral(resourceName: "3.png"),#imageLiteral(resourceName: "4.png"),#imageLiteral(resourceName: "6.png"),#imageLiteral(resourceName: "7.png"),#imageLiteral(resourceName: "8.png"),#imageLiteral(resourceName: "9.jpeg"),#imageLiteral(resourceName: "10.png"),#imageLiteral(resourceName: "11.png")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func jugar(_ sender: UIButton) {
        let Aleat = Int.random(in: 1...10)
        let Aleat2 = Int.random(in: 1...10)
        img1.image = baraja[Aleat]
        img2.image = baraja[Aleat2]
        
        if (Aleat==1 && Aleat2 == 2){
            //validar juego ganador
            let alerta = UIAlertController(title: "Felicidades", message: "Ganaste", preferredStyle: .alert)
            
            let accionOK = UIAlertAction(title: "Volver a jugar", style: .default, handler: nil)
            
            let accionApostar = UIAlertAction(title: "Apostar", style: .default) { _ in
                print("apostando")
            }
            
            let accionJugarNvo = UIAlertAction(title: "salir", style: .cancel){ _ in
                print("salir del juego")
                exit(0)
            }
            alerta.addAction(accionOK)
            alerta.addAction(accionJugarNvo)
            alerta.addAction(accionApostar)
            present(alerta, animated: true, completion: nil)
        }
    }
}

