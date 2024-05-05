import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa){ cosas.add(cosa) }
	
	method cantidadDeCosasCompradas() {return cosas.size()}
	method tieneComida() {return cosas.any({cosa=> cosa.esComida()})}
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico()or cosas.last().precio()>50000
	}
	method esDerrochona(){return cosas.sum({cosa=>cosa.precio()}) >= 90000}
	method compraMasCara() {return cosas.max({cosa=>cosa.precio()})}
	method electrodomesticosComprados() {
		return cosas.filter({cosa=>cosa.esElectrodomestico()})
	}
	method malaEpoca(){return cosas.all({cosa=>cosa.esComida()})}
	method queFaltaComprar(lista){
		return lista.filter({cosa=>not cosas.contains(cosa)})
	}
	method faltaComida(){return cosas.filter({cosa=>cosa.esComida()}).size()<2}
}
