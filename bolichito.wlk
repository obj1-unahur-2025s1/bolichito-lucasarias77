import personas.*
import objetos.*

object bolichito {
  var objetoEnVidriera = pelota
  var objetoEnMostrador = remera

    method objetoEnMostrador(objetoAPoner){
        objetoEnMostrador = objetoAPoner
    }
    method  objetoEnVidriera(objetoAPoner) {
      objetoEnVidriera = objetoAPoner
    }

    method esBrillante() { //metodo de consulta
      return objetoEnMostrador.material().brilla() &&
      objetoEnVidriera.material().brilla()
    }

    method esMonocromatico(){
        return objetoEnMostrador.color() ==
        objetoEnVidriera.color()
    }
    
    method estaEquilibrado(){
        return objetoEnMostrador.peso() > 
        objetoEnVidriera.peso()
    }

    method tieneAlgoDeColor_(unColor){
      return objetoEnMostrador.color() == unColor ||
      objetoEnVidriera.color() == unColor
    }

    method puedeMejorar(){ //self es la palabra reservada para dentro de un objeto hacer referencias asi mismo
        return not self.estaEquilibrado() || self.esMonocromatico() 
    }

    method puedeOfrecerleAlgoA_(unaPersona){
        return unaPersona.leGusta(objetoEnMostrador) ||
        unaPersona.leGusta(objetoEnVidriera)
    }

    method intercambiarObjetos(){ //metodo de indicacion
        const aux = objetoEnMostrador //uso una constante porque no lo cambio nunca, si uso una variable el programa se queja
        objetoEnMostrador = objetoEnVidriera
        objetoEnVidriera = aux
    }

    method intercambiarPlus(){
        self.intercambiar(objetoEnVidriera,objetoEnMostrador) //probar despues
    }

    method intercambiar(unObjeto, otroObjeto){
        objetoEnMostrador = unObjeto
        objetoEnVidriera = otroObjeto
    }
 }

