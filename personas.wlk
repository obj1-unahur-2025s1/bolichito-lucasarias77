import objetos.*  // para importar, * para importar todo//
//como importo las cosas del archivo objetos todo eso esta aca y se ve en repl


object rosa {
  method leGusta(unaCosa){
    return unaCosa.peso() <= 2000
  }
}

object estefania {
  method leGusta(unaCosa) {
    return unaCosa.color().esFuerte() //le pregunto al parametro por el color y despues pregunto si ese color es fuerte
  }
}

object luisa {
  method leGusta(unaCosa) {
    return unaCosa.material().brilla() //unaCosa.material es un mensaje de consulta se le pregunta a la cosa sea lo que sea
  }
}

object juan {
  method leGusta(unaCosa) { //como espera recibir unaCosa, no le puedo preguntar sobre un material, no funciona porque no es lo que espera recibir
    return not unaCosa.color().esFuerte() ||  // se puede usar ! o not //
    unaCosa.peso().between(1200, 1800) 
  }
}


