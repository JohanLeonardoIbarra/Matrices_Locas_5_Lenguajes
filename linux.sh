

matrices=("2x2" "5x5" "10x10" "50x50" "100x100")

for m in "${matrices[@]}"
do
  phpCommand="cat $m.txt | php ./Php/MatrizLoca.php"
  phpTime=$( { time $phpCommand; } 2>&1 )
  echo -e "\033[1;32mPHP Section ============================================================================================== \033[0m\n"
  echo "------------------- Matriz $m -------------------"
  echo "El tiempo de ejecucion del escenario es: ${phpTime##*real}" 

  cppCommand="cat ./$m.txt | ./C++/MatrizLoca.exe"
  cppTime=$( { time $cppCommand; } 2>&1 )
  echo -e "\033[1;32mC++ Section ============================================================================================== \033[0m\n"
  echo "------------------- Matriz $m -------------------"
  echo "El tiempo de ejecucion del escenario es: ${cppTime##*real}" 

  javaCommand="cat ./$m.txt | java ./Java/src/Main.java"
  javaTime=$( { time $javaCommand; } 2>&1 )
  echo -e "\033[1;32mJava Section ============================================================================================= \033[0m\n"
  echo "------------------- Matriz $m -------------------"
  echo "El tiempo de ejecucion del escenario es: ${javaTime##*real}"

  nodeCommand="cat ./$m.txt | node ./Node/Matrizloca.js"
  nodeTime=$( { time $nodeCommand; } 2>&1 )
  echo -e "\033[1;32mNode Section ============================================================================================= \033[0m\n"
  echo "------------------- Matriz $m -------------------"
  echo "El tiempo de ejecucion del escenario es: ${nodeTime##*real}"

  pythonCommand="cat ./$m.txt | python ./Python/Matrizloca.py"
  pythonTime=$( { time $pythonCommand; } 2>&1 )
  echo -e "\033[1;32mPython Section =========================================================================================== \033[0m\n"
  echo "------------------- Matriz $m -------------------"
  echo "El tiempo de ejecucion del escenario es: ${pythonTime##*real}"

done

read -p "Presiona Enter para continuar..."