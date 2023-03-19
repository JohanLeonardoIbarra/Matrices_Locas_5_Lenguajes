<?php

$x = 0;
$y = 0;

fscanf(STDIN, '%d %d', $x, $y);

$matrix = [];

for ($i = 0; $i < $x; $i++) {
  $entry = explode(' ', fgets(STDIN));
  $matrix[$i] = $entry;

  for ($j = 0; $j < $y; $j++) {
    if ($i % 2 == 0) $matrix[$i][$j] += 1;
    if ($j % 2 == 0) $matrix[$i][$j] += 2;
    if ($i % 2 != 0 && $j % 2 != 0) $matrix[$i][$j] -= 3;
  }
}

for ($i = 0; $i < $x; $i++) {
  $response = '';

  for ($j = 0; $j < $y; $j++) {
    $response .= $matrix[$i][$j];

    if ($j + 1 < $y) $response .= ' ';
  }

  echo $response."\n";
}