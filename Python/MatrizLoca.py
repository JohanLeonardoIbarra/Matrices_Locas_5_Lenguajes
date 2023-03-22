import sys

def matrizLoca():
    input_lines = sys.stdin.read().split('\n')

    size = input_lines[0].split()
    x = int(size[0])
    y = int(size[1])

    matrix = []

    for i in range(x):
        row = input_lines[i+1].split()
        matrix.append(list(map(int, row)))

    for i in range(x):
        for j in range(y):
            if i % 2 == 0:
                matrix[i][j] += 1
            if j % 2 == 0:
                matrix[i][j] += 2
            if i % 2 != 0 and j % 2 != 0:
                matrix[i][j] -= 3

    for row in matrix:
        print(' '.join(map(str, row)))

matrizLoca()