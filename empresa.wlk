import example.*


object empresa {
  const mensajeros = []
  
  method mensajero() = mensajeros
  method contratar(mensajero) {
    mensajeros.add(mensajero)
  }
  method despedir(mensajero) {
    mensajeros.remove(mensajero)
  }
  method despedirAtodos() {
    mensajeros.clear()
  }
  method mensajeriaEsGrande() = mensajeros.size() > 2

  method puedeEntregarPaquetePrimerMensajero() = paquete.puedeSerEntregado(mensajeros.first())
  method pesoUltimoMesjaero() = mensajeros.last().pesoTotal()

}

