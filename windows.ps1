cmd /c GM.exe

$matrices = @("2x2", "5x5", "10x10", "50x50", "100x100")

$phpResults = @()
$cppResults = @()
$javaResults = @()
$nodeResults = @()
$pythonResults = @()

foreach ($m in $matrices) {
$phpCommand = "type $m.txt | php ./Php/MatrizLoca.php"
$phpTime = Measure-Command -Expression { $phpOutput = & cmd /c $phpCommand }
$phpResult = "------------------- Matriz $m -------------------`r`nEl tiempo de ejecucion del escenario es: $($phpTime.TotalSeconds.ToString('N9')) segundos. `r`n"
$phpResults += $phpResult

$cppCommand = "type .\$m.txt | .\C++\MatrizLoca.exe"
$cppTime = Measure-Command -Expression { $cppOutput = & cmd /c $cppCommand }
$cppResult = "------------------- Matriz $m -------------------`r`nEl tiempo de ejecucion del escenario es: $($cppTime.TotalSeconds.ToString('N9')) segundos. `r`n"
$cppResults += $cppResult

$javaCommand = "type .\$m.txt | java .\Java\src\Main.java"
$javaTime = Measure-Command -Expression { $javaOutput = & cmd /c $javaCommand }
$javaResult = "------------------- Matriz $m -------------------`r`nEl tiempo de ejecucion del escenario es: $($javaTime.TotalSeconds.ToString('N9')) segundos. `r`n"
$javaResults += $javaResult

$nodeCommand = "type .\$m.txt | node .\Node\Matrizloca.js"
$nodeTime = Measure-Command -Expression { $nodeOutput = & cmd /c $nodeCommand }
$nodeResult = "------------------- Matriz $m -------------------`r`nEl tiempo de ejecucion del escenario es: $($nodeTime.TotalSeconds.ToString('N9')) segundos. `r`n"
$nodeResults += $nodeResult

$pythonCommand = "type .\$m.txt | python .\Python\Matrizloca.py"
$pythonTime = Measure-Command -Expression { $pythonOutput = & cmd /c $pythonCommand }
$pythonResult = "------------------- Matriz $m -------------------`r`nEl tiempo de ejecucion del escenario es: $($pythonTime.TotalSeconds.ToString('N9')) segundos. `r`n"
$pythonResults += $pythonResult
}

Write-Host "PHP Section ============================================================================================== `r`n" -ForegroundColor Green
Write-Output $phpResults

Write-Host "C++ Section ============================================================================================== `r`n" -ForegroundColor Green
Write-Output $cppResults

Write-Host "Java Section ============================================================================================= `r`n" -ForegroundColor Green
Write-Output $javaResults

Write-Host "Node Section ============================================================================================= `r`n" -ForegroundColor Green
Write-Output $nodeResults

Write-Host "Python Section =========================================================================================== `r`n" -ForegroundColor Green
Write-Output $pythonResults

Read-Host "Presiona Enter para continuar..."