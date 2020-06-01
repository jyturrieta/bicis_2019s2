import bicis.*
import accesorios.*

class Deposito
{
	const bicis = []

	
	method agregarADeposito(unaBici)
	{
		bicis.add(unaBici)
	}
	
	method bicisMasRapidas()
	{
		return bicis.filter({bici => bici.velocidadCrucero() > 25})
	}
	
	method marcasDeBicis()
	{
		return bicis.map({bici => bici.marca()}).asSet()
	}
	
	method esNocturno()
	{
		return bicis.all({bici => bici.tieneLuz()})
	}
	
	method puedeLlevarPeso(kilos)
	{
		return bicis.any({bici => bici.carga() > kilos})
	}
	
	method marcaDeLaMasRapida()
	{
		return bicis.max({bici => bici.velocidadCrucero()}).marca()
	}
	
	method cargaTotalDeLargas()
	{
		return bicis.filter({bici => bici.largo() > 170}).sum({bici => bici.carga()})
	}
	
	method cantidadSinAccesorios()
	{
		return bicis.count({bici => bici.noTieneAccesorio()})
	}
	
	method sonCompanierasDe(unaBicicleta)
	{
		return bicis.filter({bici => bici.esCompaniera(unaBicicleta)})
	}
}
