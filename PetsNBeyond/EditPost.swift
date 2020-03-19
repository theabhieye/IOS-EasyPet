//
//  EditPost.swift
//  PetsNBeyond
//
//  Created by Apple on 19/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit
import iOSDropDown
class EditPost: UIViewController ,UICollectionViewDataSource,UICollectionViewDelegate{
    
    @IBOutlet weak var mainSubview: UIView!
    
    @IBOutlet weak var detailSubView: UIView!
    @IBOutlet weak var photoSubview: UIView!
    
    @IBOutlet weak var photobtn: UIButton!
    @IBOutlet weak var detailbtn: UIButton!
    
    override func viewDidLoad() {
            super.viewDidLoad()
       
            PhotoCollectionView.dataSource = self
            PhotoCollectionView.delegate = self
             
             // MARK: Third party link -    https://github.com/jriosdev/iOSDropDown
             dropDown.addTarget(self, action: #selector(myTargetFunction), for: .touchDown)
     }
    
    @IBAction func details_button(_ sender: Any) {
        
            
    }
    @IBAction func PhotoButton(_ sender: Any) {
    }
 
    
    
    @IBOutlet weak var PhotoCollectionView: UICollectionView!
    
    let dogImage:[UIImage] = [UIImage(named: "boots")!,UIImage(named: "boots")!,UIImage(named: "boots")!, UIImage(named: "boots")!, UIImage(named: "boots")!, UIImage(named: "boots")!]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dogImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = PhotoCollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! EditPhotoPhotos
        
        cell.images.image  = dogImage[indexPath.item]
        return cell
    }
    
    
    
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var dropDown: DropDown!


    @objc func myTargetFunction()
    {
        dropDown.selectedRowColor = UIColor.lightGray
        dropDown.optionArray = ["Option 1", "Option 2", "Option 3","Option 1"]
        dropDown.isSearchEnable = false
        dropDown.didSelect{(selectedText , index ,id) in
        print("Selected String: \(selectedText) \n index: \(index)")
        }
    }
}
