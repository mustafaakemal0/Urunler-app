//
//  DetaySayfa.swift
//  UrunlerApp
//
//  Created by Mustafa Kemal Özen on 1.11.2023.
//

import UIKit

class DetaySayfa: UIViewController {
    
    @IBOutlet weak var ımageViewUrun: UIImageView!
    @IBOutlet weak var labelUrunFiyat: UILabel!
    
    var urun: Urunler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let u = urun {
            
            self.navigationItem.title = urun?.ad
            ımageViewUrun.image = UIImage(named: u.resim!)
            labelUrunFiyat.text = "\(u.fiyat!) TL"
            
        }
    }
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        
        if let u = urun {
            print("DETAY SAYFA : \(u.ad!) SEPETE EKLENDİ.")
            
        }
    }
    

}
