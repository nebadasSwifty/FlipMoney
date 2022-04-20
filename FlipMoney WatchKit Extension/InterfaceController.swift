//
//  InterfaceController.swift
//  FlipMoney WatchKit Extension
//
//  Created by Кирилл on 20.04.2022.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var labelOutlet: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
    }
    @IBAction func FlipMoneyButtonPressed() {
        labelOutlet.setText("Монетка крутится.")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.labelOutlet.setText("Монетка крутится..")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.labelOutlet.setText("Монетка крутится...")
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    let random = Bool.random()
                    if (random) {
                        self.labelOutlet.setText("Орёл")
                    } else {
                        self.labelOutlet.setText("Решка")
                    }
                }
            }
        }
    }
    
    override func willActivate() {
        
    }
    
    
    override func didDeactivate() {
    }

}
