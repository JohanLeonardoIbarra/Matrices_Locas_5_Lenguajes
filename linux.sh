#!/bin/bash

./GML

matrices=("2x2" "5x5" "10x10" "50x50" "100x100")

phpResults=""
cppResults=""
javaResults=""
nodeResults=""
pythonResults=""

for m in "${matrices[@]}"
do
    phpCommand="cat ${m}.txt | php ./Php/MatrizLoca.php"
    phpTime=$( { time eval "$phpCommand" >/dev/null; } 2>&1 )
    phpResult="------------------- Matriz $m -------------------\nEl tiempo de ejecucion del escenario es: $phpTime segundos.\n"
    phpResults+="$phpResult"

    cppCommand="cat ./${m}.txt | ./C++/MatrizLoca"
    cppTime=$( { time eval "$cppCommand" >/dev/null; } 2>&1 )
    cppResult="------------------- Matriz $m -------------------\nEl tiempo de ejecucion del escenario es: $cppTime segundos.\n"
    cppResults+="$cppResult"

    javaCommand="cat ./${m}.txt | java ./Java/src/Main.java"
    javaTime=$( { time eval "$javaCommand" >/dev/null; } 2>&1 )
    javaResult="------------------- Matriz $m -------------------\nEl tiempo de ejecucion del escenario es: $javaTime segundos.\n"
    javaResults+="$javaResult"

    nodeCommand="cat ./${m}.txt | node Node/Matrizloca.js "
    nodeTime=$( { time eval "$nodeCommand" >/dev/null; } 2>&1 )
    nodeResult="------------------- Matriz $m -------------------\nEl tiempo de ejecucion del escenario es: $nodeTime segundos.\n"
    nodeResults+="$nodeResult"

    pythonCommand="cat ./${m}.txt | python3 ./Python/MatrizLoca.py"
    pythonTime=$( { time eval "$pythonCommand" >/dev/null; } 2>&1 )
    pythonResult="------------------- Matriz $m -------------------\nEl tiempo de ejecucion del escenario es: $pythonTime segundos.\n"
    pythonResults+="$pythonResult"
done

echo -e "PHP Section ============================================================================================== \n" '\033[0;32m'
echo -e "$phpResults" '\033[0m'

echo -e "C++ Section ============================================================================================== \n" '\033[0;32m'
echo -e "$cppResults" '\033[0m'

echo -e "Java Section ============================================================================================= \n" '\033[0;32m'
echo -e "$javaResults" '\033[0m'

echo -e "Node Section ============================================================================================= \n" '\033[0;32m'
echo -e "$nodeResults" '\033[0m'

echo -e "Python Section =========================================================================================== \n" '\033[0;32m'
echo -e "$pythonResults" '\033[0m'

read -p "Presiona Enter para continuar..."