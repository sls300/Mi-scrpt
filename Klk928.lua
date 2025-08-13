-- Velocidad normal del jugador
local velocidadConstante = 20

-- Función que intenta cambiar la velocidad (simulando que agarras algo)
function aplicarEfecto(velocidadActual, penalizacion)
    return velocidadActual - penalizacion
end

-- Función para evitar la penalización
function mantenerVelocidad()
    return velocidadConstante
end

-- Simulación
local velocidad = velocidadConstante
print("Velocidad inicial:", velocidad)

-- El juego intenta ralentizar
velocidad = aplicarEfecto(velocidad, 10)
print("Velocidad después de agarrar algo:", velocidad)

-- Script para forzar la velocidad normal
velocidad = mantenerVelocidad()
print("Velocidad corregida por script:", velocidad)
