object paquete {
  var pago = true
  var destino = puenteDeBrooklyn
  method puedeSerEntregado(mensajero) = self.estaPago() and destino.puedePasar(mensajero)
  method estaPago() = pago
  method cambiarEstadoDePago() {
    pago = !pago
  }
  method cambiarDestino(destinoDado) {
    destino = destinoDado
  }
}





//personajes
object roberto {
  var transporte = bicicleta 
  method pesoTotal() = 90 + transporte.peso()
  method transporte(vehiculo) {
    transporte = vehiculo
  }
  method puedeLlamar() {
  return false 
  }
}

object chuckNorris {
  method puedeLlamar() {
  return true 
} 
  method pesoTotal() = 80     
}

object neo {
  var credito = true 
  method pesoTotal()= 0
  method cambiarCredito(){
    credito = !credito
  }
  method puedeLlamar()= credito  
  } 

//lugares

object puenteDeBrooklyn {
  method puedePasar(mensajero) { 
    return mensajero.pesoTotal() <= 1000    
  }  
}

object matrix {
  method puedePasar(mensajero) {
    return mensajero.puedeLlamar()
  }  
}


// Vehiculos
object bicicleta {
  method peso() = 5
}

object camion {
  var cantidadDeAcoplados = 0

  method peso() = cantidadDeAcoplados * 500

  method cantidadDeAcoplados(unaCantidad) {
    cantidadDeAcoplados = unaCantidad
  }
}

