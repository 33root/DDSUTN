package HayLugarParaUnoMas

import static junit.framework.Assert.*
import org.junit.Test

class HayLugarParaUnJugadorMas {
	var partido = new Partido
	var jugadorAAgregar = new Jugador
	var jugadorSolidarioOCondicional = new Jugador
	partido.inscriptos = newArrayList("Gabriel","Juan","Ramon","PechinioFrio","Lucas","Oscar","Facundo",
										"Gonzalo","Nestor"
									  )//son 9 jugadores de tipo estandar
									  .map(nombre | new Jugador(nombre))
									  .forEach (player | tipo = new Estandar)
	jugadorAAgregar.tipo = new Estandar
	jugadorSolidarioOCondicional.tipo = new Solidario//variando de los tipos de los jugadores como
													 //Estandar/Solidario o Estandar/Condicional o
													 //Solidario/Condicional, tendria que poderse
													 //agregar a Jugador teniendo en cuenta las
													 //las prioridades que dice el enunciado 
	partido.inscribir(jugadorSolidarioOCondicional)
	partido.inscribir(jugadorAAgregar)
	
	assertTrue(partido.inscriptos.includes(jugadorAAgregar))
	//no se si el mensaje del test de pertenencia es includes, 
	//member o alguna otra cosa, hay que preguntar eso :P			  
	 
}