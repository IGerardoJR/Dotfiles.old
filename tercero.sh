# guardaermos en un arreglo todas las dependencia

numeros=(1 2 3)
for i in {1..5} 
do
  echo "Probando los ciclos"
done

# probando ciclos en arreglos
for i in ${numeros[@]}
do
  echo "Contenido del arreglo $numeros[$i]"
done

echo ""
echo ""

#dependencias=("bspwm" "qt" "bspwm" "polybar" "juan" "gerardito" )
dependencias=("bspwm" "polybar" "sxhkd" "rofi" "xorg" "isaias")

# Verificamos en un ciclo la lectura de nuestro arreglo
echo "Las dependencias necesarias para esta tarea seran "
#sleep 2

depsEncontradas=()
depsNoEncontradas=()

for i in "${dependencias[@]}"
do
  echo "Dependencia : $i"
  comando="find /usr/bin/$i" 
  $comando &>/dev/null
  # Empezamos a separar las dependencias encontradas y las no encontradas
  if [[ $? -eq 0 ]]
  then
    echo "La dependencia $i fue encontrada"
    depsEncontradas+=($i)
  else
    echo "La dependencia $i no fue encontrada"
    depsNoEncontradas+=($i)
  fi
  #echo "find /usr/bin/${dependencias[@]}"
done

# Mandamos a imprimir las dependencias encontradas y no encontradas
echo "Dependencias encontradas : ${depsEncontradas[@]}"
echo ""
echo "Dependendencias no encontradas: ${depsNoEncontradas[@]}"


# Script funcionanl para verificar las dependencias