object roberto {
  var transporte = null 
  const peso = 90
  method pesoTotal() = peso + transporte
  method transporte(vehiculo) {
    transporte = vehiculo
  }
  method puedeLlamar() {
  return false 
  }
}

object chuckNorris {
  const peso = 80
  method puedeLlamar() {
  return true 
} 
  method pesoTotal() = peso     
}

object neo {
  const peso = 0
  var credito = true 
  method pesoTotal()= peso
  method cambiarCredito(){
    credito = !credito
  }
  method puedeLlamar()= credito  
  } 

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