object guerrero{

    method fuerza() = 100

    method esGroso(unPersonaje) = unPersonaje.fuerza() > 50
}

class Cazador {
    var mascota 

    method fuerza() = mascota.potencialOfensivo()

    method esGroso(unPersonaje) = mascota.esLongeva()
}

class Mascota {
    const  fuerza
    const  edad
    const  tieneGarras

    method potencialOfensivo() = if(not tieneGarras) fuerza else fuerza * 2

    method esLongeva() = edad > 10
}

object brujo {

    method fuerza() = 0

    method esGroso(unPersonaje) = true
}
