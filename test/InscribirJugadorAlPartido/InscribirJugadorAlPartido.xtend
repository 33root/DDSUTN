package InscribirJugadorAlPartido

import static junit.framework.Assert.*
import org.junit.Test

class InscribirJugadorAlPartido {
	
		@Test
		def testCrearJugadorDeCualquierTipoDeInscripcionConfirmaParticipacionEnElPartido
				var partido = new Partido
				var jugador = new Jugador
				
				partido.inscribir(jugador)//inscribir seria un add de jugador a la lista de inscriptos
				
				assertFalse(partido.inscriptos.size = 0)							
				
}