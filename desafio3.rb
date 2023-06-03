# Requerimiento 1, se solicita un programa que mediante el uso de métodos permita
# calcular el nuevo salario de un colaborador/a en función de un porcentaje mínimo de
# aumento establecido
# Requerimiento 1, fórmula salario + (salario * (incremento / 1000))

if Gem.win_platform?
    system "cls"
else
    system "clear"
end

print "Ingrese salario: "
salarioIngresado = gets.to_f

print "Ingrese incremento: "
incrementoIngresado = gets.to_f

def nuevoSalario(salario, incremento)
    resultado = salario + (salario * (incremento / 1000))
    return resultado
end
  
total = nuevoSalario(salarioIngresado, incrementoIngresado)
puts "El nuevo salario es: #{total}"

# Requerimiento 2, te solicitan un programa que simule el juego de “Adivina el
# número”. En este programa el computador va a elegir un número aleatorio y el
# usuario al seleccionar un número debe indicarle si ganó o perdió. La condición para
# ganar es que el número del computador debe ser igual al del jugador.
# El rango de número va entre 1 hasta n, tomando en consideración que mientras más
# amplio sea el rango más duradero será el juego.

# ● Requerimiento 2,
# ○ Utiliza el método .rand para generar números aleatorios.
# ○ Implementa el ciclo más conveniente para lograr la lógica del ejercicio.

juegoTerminado = false
print "Rango maximo para adivinar, el minimo es 1: "
n = gets.to_i

print "Ingrese numero para adivinar: "
numeroJugador = gets.to_i

while juegoTerminado == false
    numero_aleatorio = rand(1..n)
    if numeroJugador == numero_aleatorio
        juegoTerminado = true
        puts "Ganaste"
    else
        puts "Vuelve a intentarlo"
        print "Ingrese numero para adivinar: "
        numeroJugador = gets.to_i
    end
    puts "num_aleatorio: #{numero_aleatorio}"
    puts "num_jugador: #{numeroJugador}"
end

# ● Requerimiento 3, te compartimos los datos para las subcategorías asociadas a la
# obesidad.
# ○ Obesidad grado I: 30 - 34.9 - Moderado
# ○ Obesidad grado II: 35 - 39.9 - Severo
# ○ Obesidad grado III: Más de 40 - Muy severo

print "Ingrese su peso en kg: "
peso = gets.to_f

print "Ingrese su altura en m: "
altura = gets.to_f

imc = peso / (altura ** 2)
puts "Su IMC es: #{imc}"

if imc > 40
    puts "Obesidad grado III"
elsif imc > 35 && imc < 39.9
    puts "Obesidad grado II"
else
    puts "Obesidad grado I"
end