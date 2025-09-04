object paquete {
    var property estaPago = true
    var property destino = puenteDeBrooklyn

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

    method puedoHacerLlamdas() {
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
    var property peso = vehiculo
    var property vehiculo = moto

    method vehiculoQueUsa() {
      return vehiculo 
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
    var property peso = 500
    var property acoplado = 1

    method tengoAcoplados() {
        return if (acoplado > 0) 
                {peso = peso + acoplado * 500} 
                else { peso = peso + 0} 
    }
}

