import UIKit

extension UIColor {
    static let agreen = UIColor(red:0.39, green:0.74, blue:0.36, alpha:1.0)
    
}

class ItemViewController: UIViewController {
    var scannedCode:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white

        let icon = UIImage(named: "picon.png")
        let imageView = UIImageView(image: icon)
        imageView.frame = CGRect(x: 60, y: 85, width: 100, height: 100)
        view.addSubview(imageView)
        
        let namelabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        namelabel.center = CGPoint(x: 300, y: 150)
        namelabel.text = "LIGHTING2"
        view.addSubview(namelabel)
        
        
        let typelabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        typelabel.center = CGPoint(x: 160, y: 200)
        typelabel.text = "Type"
        view.addSubview(typelabel)
        
        let type = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        type.center = CGPoint(x: 160, y: 235)
        type.text = "Lighting"
        type.textColor = UIColor.agreen
        view.addSubview(type)
        
        let brandlabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        brandlabel.center = CGPoint(x: 160, y: 270)
        brandlabel.text = "Brand"
        view.addSubview(brandlabel)
        
        let brand = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        brand.center = CGPoint(x: 160, y: 305)
        brand.text = "EnergyLossCo"
        brand.textColor = UIColor.agreen
        view.addSubview(brand)
        
        let modellabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        modellabel.center = CGPoint(x: 160, y: 340)
        modellabel.text = "Model"
        view.addSubview(modellabel)
        
        let model = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        model.center = CGPoint(x: 160, y: 375)
        model.text = "Z-12-6"
        model.textColor = UIColor.agreen
        view.addSubview(model)
        
        
        let vollabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        vollabel.center = CGPoint(x: 160, y: 410)
        vollabel.text = "Volume/lumens"
        view.addSubview(vollabel)
        
        let vol = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        vol.center = CGPoint(x: 160, y: 445)
        vol.text = "600"
        vol.textColor = UIColor.agreen
        view.addSubview(vol)
        
        let wattslabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        wattslabel.center = CGPoint(x: 160, y: 480)
        wattslabel.text = "Watts"
        view.addSubview(wattslabel)
        
        let watts = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        watts.center = CGPoint(x: 160, y: 515)
        watts.text = "20"
        watts.textColor = UIColor.agreen
        view.addSubview(watts)
        
        
        
        
        view.addSubview(scanButton)
        scanButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        scanButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scanButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        scanButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true

    }
    
    lazy var scanButton:UIButton = {
        let scanButton = UIButton(type: .system)
        scanButton.setTitle("Scan Item", for: .normal)
        scanButton.setTitleColor(.white, for: .normal)
        scanButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        scanButton.backgroundColor = UIColor.agreen
        scanButton.layer.cornerRadius = 25
        scanButton.addTarget(self, action: #selector(displayScannerViewController), for: .touchUpInside)
        scanButton.translatesAutoresizingMaskIntoConstraints = false
        
        return scanButton
    }()
    
    @objc func displayScannerViewController() {
        print("123")
        let scanViewController = ScannerViewController()
        //navigationController?.pushViewController(scanViewController, animated: true)
        //navigationController?.present(scanViewController, animated: true, completion: nil)
        present(scanViewController, animated: true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
