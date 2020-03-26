//
//  Details.swift
//  PetsNBeyond
//
//  Created by Apple on 23/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit

class Details: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var photoCollectionView: UICollectionView!
    @IBOutlet weak var reviewTableView: UITableView!
    
    // MARK: StoryCollectionView
    
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
 
    // MARK: Review Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reviewCell") as! ReviewTableView
        return cell
    }
    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        managingphotoCollectionViewLayout()
        reviewTableView.dataSource = self
        reviewTableView.delegate = self
        photoCollectionView.dataSource = self
        photoCollectionView.delegate = self
    }
}
