//
//  Onboard_1.swift
//  PetsNBeyond
//
//  Created by Apple on 17/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit

class Onboard_1: UIViewController,UIScrollViewDelegate{

    @IBOutlet weak var LDGradientView: UIView!
    @IBOutlet weak var btn_getStarted: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var dogsImage: [String] = ["Banner 2","Base","boots"]
    var frame = CGRect.zero
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
       LDGradientView.setGradientBackground(colorOne: Colors.darkGreen, colorTwo: Colors.lightGreen)
        pageControl.numberOfPages = dogsImage.count
            setupScreens()
        scrollView.delegate = self
    }
    
    func setupScreens()
    {
        for index in 0..<dogsImage.count {
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: dogsImage[index])
            
            self.scrollView.addSubview(imgView)
        }
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(dogsImage.count)), height: scrollView.frame.size.height)
        scrollView.delegate = self
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    }
}
