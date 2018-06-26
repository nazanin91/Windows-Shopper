//
//  CurrencyTextField.swift
//  Windows-Shopper
//
//  Created by Nazanin on 3/27/1397 AP.
//  Copyright © 1397 Nazanin. All rights reserved.
//

import UIKit

@IBDesignable //to make deigned objects be viewable in interface builder too

class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) { //never use this function without code inside it
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7314800127, green: 0.7314800127, blue: 0.7314800127, alpha: 0.800968536)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        
        currencyLbl.clipsToBounds = true //becuse we implement draw, the previous code for corner radius does not work
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() { //Going to be called at interface builder
        customizeView()
    }
    override func awakeFromNib() { //Going to be called at runtime
        super.awakeFromNib()
        customizeView()
    }
        
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
            
            /*if placeholder == nil {
             placeholder = " "
             }
             let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
             attributedPlaceholder = place
             textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) */
            
            //both ways are for error control of placeholder not being nil
        
        clipsToBounds = true
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
