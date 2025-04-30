import example.*


object empresa {
  const mensajeros = []
  const enviados = []
  const pendientes  = []
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

  method puedeEntregar(paquete)= mensajeros.any{m=>paquete.puedeSerEntregado(m)}

  method losQuepuedeEntregar(paquete)= mensajeros.filter{m=>paquete.puedeSerEntregado(m)}

  method tieneSobrepeso() = self.pesoTotal() / self.cantidadMensajeros() > 500

  method cantidadMensajeros() = mensajeros.size()

  method pesoTotal() = mensajeros.sum{m=>m.pesoTotal()}

  method enviar(paquete) {
    if(self.puedeEntregar(paquete))
       enviados.add(paquete)
    else
       pendientes.add(paquete)
  }
  method facturazion() = enviados.sum{p=>p.precio()}

  method enviarTodos(paquetesAEnviar) {
    paquetesAEnviar.forEach{p=>self.enviar(p)}
  }

  method enviarPendienteCaro() {
    self.enviar(self.pendienteCaro())
  }

  method pendienteCaro() = pendientes.max{p=>p.precio()}
}

