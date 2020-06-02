import accesorios.*

class Bici 
{
	
	var property rodado = 0
	var property largo = 0
	var property marca 
	const accesorio = [] 
	
	method agregarAccesorio(unAccesorio)
	{
		accesorio.add(unAccesorio)
	}
	
	method altura()
	{
		return (rodado * 2.5) + 15
	}
	method velocidadCrucero()
	{
		return if (largo > 120)
		{
			rodado + 6
		}
		else
		{
			rodado + 2
		}
	}
	method carga()
	{
		return accesorio.sum({accesorios => accesorios.carga()})
	}
	method peso()
	{
		return (rodado / 2) + accesorio.sum({accesorios => accesorios.peso()}) 
	}
	method tieneLuz()
	{
		return accesorio.any({accesorios => accesorios.luminoso()})
	}
	method cantidadLivianos()
	{
		return accesorio.count({accesorios => accesorios.peso() < 1})
	}
	method noTieneAccesorio()
	{
		return accesorio.size() == 0
	}
	
	method esCompaniera(unaBicicleta)
	{
		return ((self != unaBicicleta) and ((self.marca() == unaBicicleta.marca()) and ((self.largo() - unaBicicleta.largo()) <= 10 )))
	}
}

