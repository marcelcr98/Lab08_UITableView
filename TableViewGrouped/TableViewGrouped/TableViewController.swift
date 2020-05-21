//
//  TableViewController.swift
//  TableViewGrouped
//
//  Created by mbtec22 on 5/21/20.
//  Copyright © 2020 Tecsup. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var secciones: [Secciones] = ModeloDatos().obtenerSeccionesDesdeDatos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.contentInset = UIEdgeInsets(top: 20.0, left: 0.0, bottom: 0.0, right: 0.0)
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return secciones.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        //QUE ME DEVUELVA EL OBJETO SECCIONES, EN UN FORMATO ARRAY Y QUE CUENTE LOS ITEMS.
        
        return secciones[section].items.count
    }
    
    //QUE ME DEVUELVA LAS CABECERAS.
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return secciones[section].cabecera
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = secciones[indexPath.section].items[indexPath.row]
        
        
        return cell
    }
    
}

