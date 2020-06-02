object farolito 
{
	var property luminoso = true
	method peso()
	{
		return 0.5
	} 
	method carga()
	{
		return 0
	}
	
	
	
}
class Canasto
{
	var property volumen = 0
	var property luminoso = false
	method peso()
	{
		return volumen / 10 
	}

	method carga()
	{
		return volumen * 2
	}
}

class Morral
{
	var property largo = 0
	var ojoDeGato = true
	var luminoso = true
	
	method setLargo(nuevoLargo)
	{
		largo = nuevoLargo
	}
	method setOjoDeGato()
	{
		ojoDeGato = not ojoDeGato
		luminoso = not luminoso
	}
	method peso()
	{
		return 1.2
	}
	
	method luminoso()
	{
		return luminoso
	}
	
	method carga()
	{
		return largo / 3
	}
}

/* Se debe crear una nueva clase, la cual debe contener los mismos metodos que le resto 
 * de los accesorios para que se respete el poliformismo. Con esto, podemos crear cualquier
 * tipo de accesorio nuevo desde la consola*/