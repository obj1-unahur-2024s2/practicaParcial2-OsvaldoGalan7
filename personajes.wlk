import roles.*
class Personaje {
    var property rol
    const property fuerza

    method potencialOfensivo() = fuerza + rol.fuerza()

    method esGroso() = self.esInteligente() or rol.esGrosoCon(self)

    method esInteligente()
}

class Orco inherits Personaje {

    override method potencialOfensivo() = super() * 1.1

    override method esInteligente() = false
}

class Humano inherits Personaje {
    const inteligencia

    override method esInteligente() = inteligencia > 50
}