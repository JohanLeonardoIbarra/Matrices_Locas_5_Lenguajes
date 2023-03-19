import * as readline from 'node:readline';

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
  terminal: false
});

const matrizLoca = async () => {
  const size = await new Promise((resolve) => rl.question('', resolve));

  let x, y;
  x = size.split(' ')[0];
  y = size.split(' ')[1];

  const matrix = [];

  for (let i = 0; i < x; i++) {
    const row = await new Promise((resolve) => rl.question('', resolve));
    matrix[i] = row.split(' ').map(value => Number.parseInt(value));
  }

  for (let i = 0; i < x; i++) {
    for (let j = 0; j < y; j++) {
      if (i % 2 == 0) matrix[i][j] += 1;
      if (j % 2 == 0) matrix[i][j] += 2;
      if (i % 2 != 0 && j % 2 != 0) matrix[i][j] -= 3;
    }
  }

  matrix.forEach(row => {
    console.log(row.join(' '));
  });
}

matrizLoca()
  .then(() => rl.close())
  .catch(console.error);