//
//  quesoViewController.swift
//  OrdenarPizza
//
//  Created by Rodrigo Guerra Castilla on 30/01/17.
//  Copyright © 2017 Rodrigo Guerra Castilla. All rights reserved.
//

import UIKit

class quesoViewController: UIViewController {

    var seleccionDeTamañouno:String=""
    var seleccionDeMasa = ""
    var queso = ""
    
    
    @IBOutlet weak var scrollv: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollv.contentSize.height = 1600
        //scroll.contentSize.height = 1000
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var tamaño = seleccionDeTamañouno
        var masa = seleccionDeMasa
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tipoDeQueso = queso
        let sigVista = segue.destination as! ingredientesViewController
        sigVista.seleccionDeTamañodos = seleccionDeTamañouno
        sigVista.seleccionDeMasauno = seleccionDeMasa
        sigVista.seleccionDeQueso = tipoDeQueso
        
    }
    
    
    
    @IBAction func mozzarella(_ sender: Any) {
    queso = "Queso: Mozzarella"
        
    }
    
    @IBAction func cheddar(_ sender: Any) {
    queso = "Queso: Cheddar"
        
    }
    
    @IBAction func parmesano(_ sender: Any) {
    queso = "Queso: Parmesano"

    }
    
    @IBAction func noQueso(_ sender: Any) {
        queso = "Sin Queso"
    }
  /* @IBAction func sinQueso(_ sender: Any) {
    queso = "Queso: Sin Queso"
        
    }*/

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
