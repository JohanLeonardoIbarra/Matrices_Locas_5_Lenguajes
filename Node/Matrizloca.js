const matrixLoca = () => {
  let input = '';
  let size = '';
  let matrix = [];

  process.stdin.setEncoding('utf8');

  process.stdin.on('data', chunk => {
    input += chunk;
  });

  process.stdin.on('end', () => {
    input = input.trim().split('\n');

    size = input.shift().split(' ');

    const x = size[0];
    const y = size[1];

    for (let i = 0; i < x; i++) {
      matrix[i] = input[i].split(' ').map(value => Number.parseInt(value));
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
  });
}

matrixLoca();