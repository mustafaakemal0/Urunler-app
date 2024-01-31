//
//  UrunlerHucre.swift
//  UrunlerApp
//
//  Created by Mustafa Kemal Özen on 1.11.2023.
//

import UIKit

protocol HucreProtocol {
    
    func sepetEkletiklandı(indexPath: IndexPath)
}
class UrunlerHucre: UITableViewCell {

    @IBOutlet weak var hucreArkaplan: UIView!
    
    @IBOutlet weak var ımageViewUrun: UIImageView!
    @IBOutlet weak var labelUrunFiyat: UILabel!
    @IBOutlet weak var labelUrunAd: UILabel!
    
    var hucreProtocol: HucreProtocol?
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepetEkletiklandı(indexPath: indexPath!)
    }
    
}
