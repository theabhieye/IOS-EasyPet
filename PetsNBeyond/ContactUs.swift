//
//  ContactUtextViews.swift
//  PetsNBeyond
//
//  Created by Apple on 18/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit

class ContactUs: UIViewController ,  UITextViewDelegate  {
    
    
    @IBOutlet weak var reasonTextView: UITextView!
    
    @IBOutlet weak var subView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CommanMethod().addBorderToView(subView)
        settingTextArea()
        }
        
        //MARK: TextArea editting
        func settingTextArea()
        {
                self.reasonTextView.layer.borderColor = UIColor.lightGray.cgColor
                self.reasonTextView.layer.borderWidth = 1
                
                reasonTextView.text = "Reason"
                reasonTextView.textColor = UIColor.lightGray
                reasonTextView.font = UIFont(name: "verdana", size: 13.0)
                reasonTextView.returnKeyType = .done
                reasonTextView.delegate = self
        }
    //MARK:- UITextViewDelegates
        func textViewDidBeginEditing(_ textView: UITextView) {
            if textView.text == "Reason" {
                textView.text = ""
                textView.textColor = UIColor.black
                textView.font = UIFont(name: "verdana", size: 18.0)
            }
        }
        
        func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
            if text == "\n" {
                textView.resignFirstResponder()
            }
            return true
        }
        
        func textViewDidEndEditing(_ textView: UITextView) {
            if textView.text == "" {
                textView.text = "Reason"
                textView.textColor = UIColor.lightGray
                textView.font = UIFont(name: "verdana", size: 13.0)
            }
        }
}
