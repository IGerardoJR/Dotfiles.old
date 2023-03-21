# probando el anadir cosas a un array

numsPares=()
numsImpares=()

for i in {1..10} 
do
  echo "$i"
  if [[ $i%2 -eq 0 ]]
  then
    numsPares+=$i
  else
    numsImpares+=$i
  fi

#echo "Numeros pares: $numsPares"
#echo "Numeros impares: $numsImpares"
done

echo "Numeros pares: $numsPares"
echo "Numeros impares: $numsImpares"
#IFS=","
#echo "${numsPares[1]}"
echo ${numsPares}
function esPar {
  if [[ $1%2 -eq 0 ]]
  then
    echo "El numero es par"
  else
    echo "El numero es impar"
  fi
}

esPar 2
esPar 1
