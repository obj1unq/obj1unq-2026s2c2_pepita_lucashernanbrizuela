object pepita {
  var energia = 100

  method energiaActual() = energia

  method volar_metros(metrosAVolar) {
    energia = energia - 10 - metrosAVolar/10 
  }

  method descansar() {
    energia = energia + 10
  }

  method esta_cansada() = energia < 30

  method comer(alimento) {
    energia = energia + alimento.energiaDada()
  }

}

object alpiste {
  method energiaDada() {
    return 20
  }
}

object manzana {
  var madurez = 1

  method energiaDada() {
    return 20 * self._multiplicador()
  }

  method _multiplicador() { 
    return if (madurez < 3) madurez else 0
  }

  
}

/* Ejercicio 4: Pepón */
object pepon {
  var enegia_inicial = 30


  method volar_metros(metrosAVolar) {
    enegia_inicial = enegia_inicial - 20 - 2*metrosAVolar
  }
  
  method comer(alimento) {
    enegia_inicial = enegia_inicial + (alimento.energiaDada() / 2)
  }

  method esta_cansado() = enegia_inicial < 34

  method cantidadDeEnergia() = enegia_inicial 
  
}

/* Ejercicio 5: Rebeca */

object rebeca {
  var ave = pepita
  var cantDeCenas = 0

  method aveActual() = ave


  method encomendarNuevaAve(aveAEntrenar) {
     ave = aveAEntrenar
     cantDeCenas = 0
  }

  method alimentar(alimento) {
    ave.comer(alimento)
    cantDeCenas = cantDeCenas + 1
  }

  method cenas() = cantDeCenas

}


/*
Ejercicio 5: Rebeca
Agregar a Rebeca, que es una persona

Tiene un ave, a veces es Pepón, a veces es Pepita,
 por lo tanto tiene que entender un mensaje para que se le indique cual es su ave.
  Inicialmente es pepita.

Alimentar de Rebeca
Rebeca entiende el mensaje alimentar, que recibe un alimento por parámetro.
 Al recibir este mensaje rebeca alimenta a su ave.

Ejemplos:

Si tiene a pepon con energía de 30, y recibe el mensaje alimentar(alpiste) pepon queda con 42.5 de energía
Si tiene a pepita con energía de 100 y recibe el mensaje alimentar(alpiste) pepita queda con 125 de energía.


Cenas
Entiende el mensaje cenas sin parámetros, 
el cual devuelve la cantidad de veces que rebeca dio de alimentar a su ave Desde que la está entrenando.
 (Pensar como hacer para recordar este dato y cuando se debe resetear).

Por ejemplo:

a rebeca se le encomienda entrenar a pepita
a rebeca se le pide alimentar a su ave
a rebeca se le pide nuevamente alimentar a su ave
a rebeca se le pregunta por las cenas: devuelve 2
a rebeca se le enconmienda entrenar a pepon
a rebeca se le pide alimentar a su ave
a rebeca se le pregunta por las cenas: devuelve 1
a rebeca se le encomienda entrenar a pepita
a rebeca se le pregunta por las cenas: devuelve 0
Nota: Si rebeca está entrenando a pepita y se le pide nuevamente que entrene a pepita,
 se puede considerar que la cuenta de cenas debe reiniciarse.
*/