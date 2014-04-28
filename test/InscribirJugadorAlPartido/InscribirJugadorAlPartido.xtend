package InscribirJugadorAlPartido

import static junit.framework.Assert.* // tienen que importar las clases de org.junit, no de junit.framework.
import org.junit.Test

class InscribirJugadorAlPartido {
	
		/**
		 * Esto no es un método... los métodos tienen que definir los parámetros que reciben
		 * y el cuerpo debe estar dentro de un bloque. Es decir, tienen la forma:
		 *
		 * def m([T p]) {
		 * 	//cuerpo
		 * }
		 *
		 * como ven, el parámetro es opcional pero los paréntesis no. 
		 * Este test no les va a andar.
		 * 
		 * LucasG.-
		 */
		 
		@Test
		def testCrearJugadorDeCualquierTipoDeInscripcionConfirmaParticipacionEnElPartido
				var partido = new Partido
				var jugador = new Jugador("Henry")
				
				partido.inscribir(jugador)//inscribir seria un add de jugador a la lista de inscriptos
				
				assertFalse(partido.inscriptos.size = 0)							
				
}
