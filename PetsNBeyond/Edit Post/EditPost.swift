//
//  EditPost.swift
//  PetsNBeyond
//
//  Created by Apple on 19/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit
import iOSDropDown
class EditPost: UIViewController ,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    // MARK: IBOutlet variable
    
    @IBOutlet weak var tagsCollectionView: UICollectionView!
    @IBOutlet weak var mainSubview: UIView!
    @IBOutlet weak var detailSubView: UIView!
    @IBOutlet weak var photoSubview: UIView!
    @IBOutlet weak var photobtn: UIButton!
    @IBOutlet weak var detailbtn: UIButton!
    @IBOutlet weak var PhotoCollectionView: UICollectionView!
    @IBOutlet weak var dropDown: DropDown!
    
    // MARK: User data structure
    let dogImage:[UIImage] = [UIImage(named: "boots")!,UIImage(named: "boots")!,UIImage(named: "boots")!, UIImage(named: "boots")!, UIImage(named: "boots")!, UIImage(named: "boots")!]
       
    var tag:[String] = ["tag 1","tag 2","tag 3","tag 4","tag 1","tag 2","tag 3"]
    
    // MARK: IBOutlet methods
    @objc func myTargetFunction()
    {
        dropDown.selectedRowColor = UIColor.lightGray
        dropDown.optionArray = ["Option 1", "Option 2", "Option 3","Option 1"]
        dropDown.isSearchEnable = false
        dropDown.didSelect{(selectedText , index ,id) in
        print("Selected String: \(selectedText) \n index: \(index)")
        }
    }
    @IBAction func details_button(_ sender: Any) {
           
               
       }
    @IBAction func PhotoButton(_ sender: Any) {
    }
    
       
       
    
    // MARK: viewDidLoad
    override func viewDidLoad() {
            super.viewDidLoad()
                
            managePhotoCollectionViewLayout()
            manageTagCollectionViewLayout()
            PhotoCollectionView.dataSource = self
            PhotoCollectionView.delegate = self
        tagsCollectionView.dataSource =  self
        tagsCollectionView.delegate = self
                // Third party link -   https://github.com/jriosdev/iOSDropDown
                dropDown.addTarget(self, action: #selector(myTargetFunction), for: .touchDown)
        }
      
     // MARK: Manage view collection layout
    func manageTagCollectionViewLayout()
    {
        let layoutManger : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layoutManger.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 3, right: 0)
        layoutManger.minimumInteritemSpacing = 1
        layoutManger.itemSize = CGSize(width: (self.tagsCollectionView.frame.size.width-2)/3, height: (self.tagsCollectionView.frame.size.height - 20)/3)
       
        self.tagsCollectionView.collectionViewLayout = layoutManger

    }
    func managePhotoCollectionViewLayout()
    {
            let layoutManger : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
            layoutManger.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 5, right: 5)
            layoutManger.minimumInteritemSpacing = 10
            layoutManger.itemSize = CGSize(width: (self.PhotoCollectionView.frame.size.width - 20)/2, height: (self.PhotoCollectionView.frame.size.height - 20)/2)
           
            self.PhotoCollectionView.collectionViewLayout = layoutManger
        
    }
    

    // MARK: data source and delegate method of collection view for photo collection view ang tag collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView==PhotoCollectionView) {
            return dogImage.count
            
        }
        if(collectionView==tagsCollectionView) {
            return tag.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print(collectionView)
        
        if(collectionView==PhotoCollectionView) {
        let cell = PhotoCollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! EditPhotoPhotos

        cell.images.image  = dogImage[indexPath.item]
        return cell
        }
        if(collectionView == tagsCollectionView)
        {
            let cell = tagsCollectionView.dequeueReusableCell(withReuseIdentifier: "tagCell", for:  indexPath) as! Tags
            cell.tagsLabel.text = tag[indexPath.item]
            return cell
        }
        return UICollectionViewCell()
    }
}
