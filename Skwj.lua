-- Personaje
local personaje = {
    nombre = "Jugador1",
    velocidad = 16,
    salud = 100
}

-- Configuración del script
local scriptActivo = true
local velocidadBase = personaje.velocidad

-- Funciones
local function agarrarObjeto(personaje, penalizacion)
    print("\n" .. personaje.nombre .. " ha agarrado un objeto, debería ralentizarse")
    personaje.velocidad = personaje.velocidad - penalizacion
end

local function mantenerVelocidad(personaje)
    if scriptActivo then
        personaje.velocidad = velocidadBase
    end
end

local function toggleScript()
    scriptActivo = not scriptActivo
    print("\nScript activo:", scriptActivo)
end

local function ajustarVelocidad(nuevaVelocidad)
    velocidadBase = nuevaVelocidad
    print("\nVelocidad base ajustada a:", velocidadBase)
end

local function mostrarEstado()
    print("\n--- Estado del personaje ---")
    print("Nombre:", personaje.nombre)
    print("Velocidad actual:", personaje.velocidad)
    print("Script activo:", scriptActivo)
    print("----------------------------")
end

-- Menú en consola
while true do
    print("\nOpciones:")
    print("1 - Agarrar objeto (penalización)")
    print("2 - Activar/Desactivar script")
    print("3 - Ajustar velocidad base")
    print("4 - Mostrar estado")
    print("5 - Salir")
    io.write("Elige una opción: ")
    
    local opcion = io.read()
    
    if opcion == "1" then
        io.write("Ingresa penalización: ")
        local penal = tonumber(io.read()) or 0
        agarrarObjeto(personaje, penal)
        mantenerVelocidad(personaje)
        mostrarEstado()
    elseif opcion == "2" then
        toggleScript()
        mantenerVelocidad(personaje)
        mostrarEstado()
    elseif opcion == "3" then
        io.write("Ingresa nueva velocidad base: ")
        local nuevaVel = tonumber(io.read()) or velocidadBase
        ajustarVelocidad(nuevaVel)
        mantenerVelocidad(personaje)
        mostrarEstado()
    elseif opcion == "4" then
        mostrarEstado()
    elseif opcion == "5" then
        print("Saliendo...")
        break
    else
        print("Opción no válida")
    end
end
