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
  method precio() = 50
}

object paquetito{
  method puedeSerEntregado(mesnajero) = true
  method estaPago() = true
  method precio() = 0
}

object paqueteViajero{
  const destinos = [matrix , puenteDeBrooklyn]
  var pagado = 0
  method puedeSerEntregado(mensajero) = self.estaPago() and self.pasaPorTodos(mensajero)
  method pasaPorTodos(mensajero) = destinos.all({d=> d.puedePasar(mensajero)})
  method estaPago() = pagado >= self.precio()
  method precio() = destinos.size() * 2
  method pagar(cantidad) {
    pagado = pagado + cantidad
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

