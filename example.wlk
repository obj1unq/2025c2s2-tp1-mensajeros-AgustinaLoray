object paquete {
    var property estaPago = true
    var property destino = null

    method puedeSerEntregado(mensajero) {
        return (estaPago && destino.puedePasar(mensajero))
    }

}

//destinos
object laMatrix {

    method puedePasar(mensajero) {
      return (mensajero.puedoHacerLlamadas() )
    }

}

object puenteDeBrooklyn {

    method puedePasar(mensajero) {
        return (mensajero.peso() <= 1000)
    }

}

//mensajeros
object jeanGray {
    var property peso = 65

    method puedoHacerLlamadas() {
        return true 
    }
}

object neo {
    var property peso = 0
    var property datosDelCelular = 100


    method puedoHacerLlamadas() {
        return datosDelCelular > 0 
    }
}

object saraConnor {
    var property peso = 0
    var property vehiculo = null

    method peso() {
        return peso + vehiculo.peso()
      
    }

    method puedoHacerLlamadas() {
        return false
    }
}

//vehiculos 

object moto {
    var property peso = 100
}

object camion {
    var property acoplado = 0
    
    method peso() {
        return 500 + acoplado * 500
    }
}

