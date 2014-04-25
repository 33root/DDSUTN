package Partido

class Partido {
	var String fecha //'20/05/14'
	var String lugar
	var String horario //'07:00pm'
	var inscriptos = newArrayList
	
	/*Inicializacion */
	new(){
		super()
		this.inicializarInscriptos
	}T
	new(String unaFecha, String unLugar, String unHorario){
		
		fecha = unaFecha
		lugar = unLugar
		horario = unHorario
		this.inicializarInscriptos
	}
	def void inicializarInscriptos(){
		inscriptos = new ArrayList<Jugador>
	}
	/*Getters y Setters */
	def getFecha(){
		this.fecha
	}
	def getLugar(){
		this.lugar
	}
	def getHorario(){
		this.horario
	}
	def getinscriptos(){
		this.inscriptos
	}
	
	def void inscribir(Jugador unJugador){
		var tipoDeInscripcion = unJugador.tipo
		if(tipoDeInscripcion == new Estandar){ //tambien habria que verificar la cantidad de inscriptos (Esme)
			inscriptos.add(unJugador)
		}else{
			//Hay que preguntar los tipos de colecciones para ver si podemos solucionar lo de las
			//prioridades sin tener que hacer muchos ifs, si no hay forma de solucionarlo con un
			//tipo espesifico de coleccion VAMOS A TENER QUE CAMBIAR EL DISEÑO Y HACER QUE UN GUGADOR
			//SE INSCRIBA AL PARTIDO Y NO EL PARTIDO AL JUGADOR
			/*pasa que en algun lado tiene que estar la lista de inscriptos. 
			 * Si hacemos eso vamos a terminar rompiendo el encapsulamiento de Partido
			 * o, agregamos a todos los que se anoten mientras en la lista haya menos de 10, 
			 * una vez que sobrepasemos ese numero vemos como echar a alguno
			 *
			 */
		}
	}
}