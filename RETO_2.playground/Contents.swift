//: Playground - noun: a place where people can play

import UIKit
/*
switch VelocidadInicial{
case 0:
self = .Apagado
case 20:
self = .VelocidadBaja
case 50:
self = .VelocidaMedia
case 120:
self = .VelocidadAlta
default:
return nil
}*/
enum Velocidades: Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(VelocidadInicial: Velocidades){
        self = VelocidadInicial
    }

}

class Auto{
    var velocidad : Velocidades
    init(velocidad: Velocidades){
     self.velocidad = velocidad
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        var velocidadActual: Int
        var cadena: String = ""
        if velocidad == Velocidades.Apagado {
            velocidadActual = Velocidades.VelocidadBaja.rawValue
            velocidad = Velocidades.VelocidadBaja
            cadena = "CAMBIO DE APAGADO A VELOCIDAD BAJA"
        }
        else if velocidad == Velocidades.VelocidadBaja{
            velocidadActual = Velocidades.VelocidadMedia.rawValue
            velocidad = Velocidades.VelocidadMedia
            cadena = "CAMBIO DE VELOCIDAD BAJA A VELOCIDAD MEDIA"
        }
        else if velocidad == Velocidades.VelocidadMedia{
            velocidadActual = Velocidades.VelocidadAlta.rawValue
            velocidad = Velocidades.VelocidadAlta
            cadena = "CAMBIO DE VELOCIDAD MEDIA A VELOCIDAD ALTA"
        }
        else{
            velocidad = Velocidades.VelocidadMedia
            velocidadActual = Velocidades.VelocidadMedia.rawValue
            cadena = "CAMBIO DE VELOCIDAD ALTA A VELOCIDAD MEDIA"
        }
        let conjunto = (velocidadActual,cadena)
        return conjunto
    }
    
}
//var hola = Velocidades.Apagado
var nuevoAuto = Auto(velocidad: Velocidades.Apagado)
var reto = 0...19
for n in reto{
    var conjuntos = nuevoAuto.cambioDeVelocidad()
    print("\(conjuntos.actual), \(conjuntos.velocidadEnCadena)")
}




