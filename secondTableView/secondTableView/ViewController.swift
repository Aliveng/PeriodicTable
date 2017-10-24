//
//  ViewController.swift
//  secondTableView
//
//  Created by Aliveng on 10.10.17.
//  Copyright © 2017 Aliveng. All rights reserved.
//

import UIKit

class RadialGradientView: UIView {
    
    override func draw(_ rect: CGRect) {
        let colors = [#colorLiteral(red: 0.6121087531, green: 0.33342093, blue: 0.8608224937, alpha: 0.7965004281).cgColor, UIColor.clear.cgColor]
        
        if
            let context = UIGraphicsGetCurrentContext(),
            let gradient = CGGradient(colorsSpace: nil, colors: colors as CFArray, locations: nil)
        {
            context.drawRadialGradient( gradient, startCenter: center,
                                        startRadius: 0,
                                        endCenter: center,
                                        endRadius: frame.height/1.8, options: CGGradientDrawingOptions.drawsAfterEndLocation)
        }
    }
    
}


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var secondTableView: UITableView!
    
        let elementNumbers = ["1", "118", "2"]
        let elementNames = ["H", "Og", "Si"]
        let elementFullNames = ["Hydrogen", "Oganesson", "Silicium"]
    
        //let launchImeg = ["PT_Launc.png"]
    
    //let cellSpacingHeight: CGFloat = 20
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor.black
        secondTableView.dataSource = self
        secondTableView.backgroundColor = .clear
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elementNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = Bundle.main.loadNibNamed("secondTableViewCell", owner: self, options: nil)?.first as! secondTableViewCell
    
        cell.backgroundColor = #colorLiteral(red: 0.6121087531, green: 0.33342093, blue: 0.8608224937, alpha: 0.09551583906)
        cell.layer.borderWidth = 1.3
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.cornerRadius = 7
        cell.labelOne?.text = elementNumbers[indexPath.row]
        cell.labelTwo?.text = elementFullNames[indexPath.row]
        cell.labelThree?.text = elementNames[indexPath.row]
        
        return cell
        
    }
}

