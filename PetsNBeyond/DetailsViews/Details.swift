//
//  Details.swift
//  PetsNBeyond
//
//  Created by Apple on 23/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit

class Details: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var photoCollectionView: UICollectionView!
    
    let dogImage:[UIImage] = [UIImage(named: "boots")!,UIImage(named: "boots")!,UIImage(named: "boots")!, UIImage(named: "boots")!, UIImage(named: "boots")!, UIImage(named: "boots")!]
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dogImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = photoCollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PhotoCollectionViewCell

        cell.dogImageView.image  = dogImage[indexPath.item]
        return cell
        
    }
    func managingphotoCollectionViewLayout(){

        let layoutManger : UICollectionViewFlowLayout =
                    UICollectionViewFlowLayout()
            
        layoutManger.scrollDirection = .horizontal
        
        layoutManger.minimumLineSpacing = 20
        
        layoutManger.itemSize = CGSize(width: (self.photoCollectionView.frame.size.width-10)/3.8, height:(self.photoCollectionView.frame.size.height))
            self.photoCollectionView.collectionViewLayout = layoutManger   
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        managingphotoCollectionViewLayout()
        photoCollectionView.dataSource = self
        photoCollectionView.delegate = self
    }
}
