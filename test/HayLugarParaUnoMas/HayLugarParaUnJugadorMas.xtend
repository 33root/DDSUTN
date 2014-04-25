package HayLugarParaUnoMas

import static junit.framework.Assert.*
import org.junit.Test

class HayLugarParaUnUltimoJugador { /*Agus, este es
 * un comentario
 * largo :P*/
	@Test
	def testJugadorEstandarJugadorSolidarioQuiereAnotarseAdmiteAlEstandar(){
	//Escenario
	var partido = new Partido
	var jugadorAdmitido = new Jugador
	var jugadorSolidario = new Jugador
	partido.inscriptos = newArrayList("Gabriel","Juan","Ramon","PechinioFrio","Lucas","Oscar","Facundo",
										"Gonzalo","Nestor")
									  .map(nombre | new Jugador(nombre))
									  .forEach (player | tipo = new Estandar
									  ) //9 jugadores ya anotados, todos de tipo Estandar
		//Acción
	jugadorAdmitido.tipo = new Estandar
	jugadorSolidario.tipo = new Solidario//variando los tipos de los jugadores como
													 //Estandar/Solidario o Estandar/Condicional o
													 //Solidario/Condicional, tendria que Admitir
													 //a JugadorAdmitido teniendo en cuenta las
													 //las prioridades que dice el enunciado.
													 //¿Hacemos un test por cada uno?
													 //Por alguna razon no me parece una buena practica andar reciclando tests(esme) 
	partido.inscribir(jugadorSolidario)
	partido.inscribir(jugadorAdmitido)
	//Validacion
	assertTrue(partido.inscriptos.includes(jugadorAdmitido)) //verificamos que no este el solidario?
	}
	//no se si el mensaje del test de pertenencia es includes, 
	//member o alguna otra cosa, hay que preguntar eso :P			  
	 
}