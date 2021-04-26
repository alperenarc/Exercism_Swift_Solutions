//Given an age in seconds, calculate how old someone would be on:
//
//Earth: orbital period 365.25 Earth days, or 31557600 seconds
//Mercury: orbital period 0.2408467 Earth years
//Venus: orbital period 0.61519726 Earth years
//Mars: orbital period 1.8808158 Earth years
//Jupiter: orbital period 11.862615 Earth years
//Saturn: orbital period 29.447498 Earth years
//Uranus: orbital period 84.016846 Earth years
//Neptune: orbital period 164.79132 Earth years
//So if you were told someone were 1,000,000,000 seconds old, you should be able to say that they're 31.69 Earth-years old.

class SpaceAge {
    var seconds: Double
    init(_ seconds: Double) {
        self.seconds = seconds
    }
    var earthSecond = 31557600

    var onEarth: Double { seconds / Double(earthSecond) }
    var onMercury: Double { onEarth / Orbitals.Mercury.rawValue }
    var onUranus: Double { onEarth / Orbitals.Uranus.rawValue }
    var onNeptune: Double { onEarth / Orbitals.Neptune.rawValue }
    var onSaturn: Double { onEarth / Orbitals.Saturn.rawValue }
    var onJupiter: Double { onEarth / Orbitals.Jupiter.rawValue }
    var onMars: Double { onEarth / Orbitals.Mars.rawValue }
    var onVenus: Double { onEarth / Orbitals.Venus.rawValue }


}

enum Orbitals: Double {
    case Earth = 31557600
    case Uranus = 84.016846
    case Neptune = 164.79132
    case Saturn = 29.447498
    case Jupiter = 11.862615
    case Mars = 1.8808158
    case Venus = 0.61519726
    case Mercury = 0.2408467
}
