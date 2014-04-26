package DosSolidariosEntraEstandarSaleElPrimeroQueEntro

import static junit.framework.Assert.*
import org.junit.Test

class DosSolidariosEntraEstandarSaleElPrimeroQueEntro {
	
	@Test
	
	def testSeInscribenMasDeUnSolidarioEntraElEstandarSalePrimerSolidarioQueEntro
	
	//Escenario
	
	var partido = new Partido
	var jugadorAdmitido = new Jugador
	var jugadorSolidario1 = new Jugador
	var jugadorSolidario2 = new jugador
	
		partido.inscriptos = newArrayList("Gabriel","Juan","Ramon","PechinioFrio","Lucas","Oscar","Facundo",
										"Gonzalo")
									  .map(nombre | new Jugador(nombre))
									  .forEach (player | tipo = new Estandar
									  )// 8 jugadores estandar
jugadorAdmitido.tipo = new Estandar
jugadorSolidario1.tipo = new Solidario
jugadorSolidario2.tipo = new Solidario

partido.inscribir(jugadorSolidario1)
partido.inscribir(jugadorSolidario2)
partido.inscribir(jugadorAdmitido)

	
	assertFalse(partido.inscriptos.includes(jugadorSolidario1)) 
	
/* Entran 2 Solidarios y la lista se llena, llega un Estandar y deberia salir el Solidario1 que entro primero
 * esto podria ser asi, que entren Solidarios hasta que se llene la lista y dsp cuando se llena y llegan Estandar los sacamos
 * o que cada vez que entre un Solidario/Estandar saque al Solidario que ya esta adentro, lista no llena, (esto no me gusta mucho 
 * porq si no llega ningun Estandar la lista nunca se llenaria)
 * Se me ocurre que deberiamos tener una lista ordenada por orden de Inscripcion y filtrar al primer Solidario para sacarlo
 * (Ivan)
 */
}