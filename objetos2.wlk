import objetos.*
object rojo {
    method fuerte() = true
}

object pardo {
  method fuerte() = false
}

object celeste {
  method fuerte()= false
}


object remera {
  method peso() = 800
  method color() = rojo
  method material() = lino 
}

object munieco {
  var peso = 100
  method peso() = peso
  method peso (nuevo) {peso = nuevo}
  method color() = celeste
  method material() = vidrio
}

object estefania {
  method leGusta(algo) = algo.color().fuerte()
}

object luisa {
  method leGusta(algo) = algo.color().fuerte()
}


object luisa {
  method leGusta(algo) = algo.material().brilla()
}

