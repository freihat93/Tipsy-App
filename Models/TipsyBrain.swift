//
//  TipsyBrain.swift
//  Tipsy
//
//  Created by Mohammad on 4/3/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

var tipsy: Tipsy?

struct TipsyBrain {
    
    mutating func calcuateTipsy(selected: String) {
        if selected == "Zero" {
            tipsy = Tipsy(value: 0, color: #colorLiteral(red: 0.0523853451, green: 0.6904159784, blue: 0.3843391538, alpha: 1))
        }else if selected == "Ten" {
            tipsy = Tipsy(value: 10, color: #colorLiteral(red: 0.0523853451, green: 0.6904159784, blue: 0.3843391538, alpha: 1))
        }else if selected == "Twen"{
            tipsy = Tipsy(value: 20, color: #colorLiteral(red: 0.0523853451, green: 0.6904159784, blue: 0.3843391538, alpha: 1))
        }
    }
    
//    func getPersentage() -> Float {
//        <#function body#>
//    }
    func getColor() -> UIColor {
        tipsy?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
