//
//  masaViewController.swift
//  OrdenarPizza
//
//  Created by Rodrigo Guerra Castilla on 30/01/17.
//  Copyright © 2017 Rodrigo Guerra Castilla. All rights reserved.
//

import UIKit

class masaViewController: UIViewController {

    var seleccionDeTamaño:String=""
    var masa = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var tamaño = seleccionDeTamaño
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tipoDeMasa:String = masa
        let sigVista = segue.destination as! quesoViewController
        sigVista.seleccionDeMasa = tipoDeMasa
        sigVista.seleccionDeTamañouno = seleccionDeTamaño
        
    }

    @IBAction func Delgada(_ sender: Any) {
        masa = "Tipo de Masa: Delgada"
        
    }
    
    @IBAction func Crujiente(_ sender: Any) {
        masa = "Tipo de Masa: Crujiente"
    
    }
    
    @IBAction func Gruesa(_ sender: Any) {
        masa = "Tipo de Masa: Gruesa"
        
    }
    
    
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
