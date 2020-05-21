//
//  ModeloDatos.swift
//  TableViewGrouped
//
//  Created by mbtec22 on 5/21/20.
//  Copyright © 2020 Tecsup. All rights reserved.
//

import UIKit

class ModeloDatos{
    
    func obtenerSeccionesDesdeDatos() -> [Secciones] {
        
        var seccionesArray = [Secciones]()
        
        let peliculas = Secciones(titulo: "Titulos de Películas", objetos: ["Joker","Avengers Infinity War","Deadpool 2","Logan","Venom"])
        let actores = Secciones(titulo: "Actores", objetos: ["Joaquin Phoenix","Tom Hardy","Ryan Reynolds","Hugh Jackman"])
        
        let ciudades = Secciones(titulo: "Ciudades", objetos: ["Nueva York","San Francisco","Gotham City"])
        
        seccionesArray.append(peliculas)
        
        seccionesArray.append(actores)
        
        seccionesArray.append(ciudades)
        
        return seccionesArray
    }
    
}
