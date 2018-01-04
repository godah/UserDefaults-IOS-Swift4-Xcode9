//
//  PrefUsuario.swift
//  persistence_test
//
//  Created by Chamaliun Corp on 04/01/2018.
//  Copyright © 2018 Chamaliun Corp. All rights reserved.
//

import Foundation

class PrefUsuario : NSObject, NSCoding{
    
    var nome : String
    var modo : Float
    var userSet: Bool
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.nome, forKey: "nome")
        aCoder.encode(self.modo, forKey: "modo")
        aCoder.encode(self.userSet, forKey: "userSet")
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.nome = aDecoder.decodeObject(forKey: "nome") as! String
        self.modo = aDecoder.decodeObject(forKey: "modo") as! Float
        self.userSet = aDecoder.decodeObject(forKey: "userSet") as! Bool
    }
    
    init(nome: String, modo: Float, userSet: Bool){
        self.nome = nome
        self.modo = modo
        self.userSet = userSet
        super.init()
    }
    
}
