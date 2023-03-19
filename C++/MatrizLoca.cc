// Example program
#include <iostream>
#include <string>

void solution()
{
    int x, y;
    std::cin >> x >> y;

    int matrix[x][y];
    for (int i = 0; i < x; i++)
    {
        for (int j = 0; j < y; j++)
        {
            std::cin >> matrix[i][j];
            if (i % 2 == 0)
                matrix[i][j] += 1;
            if (j % 2 == 0)
                matrix[i][j] += 2;
            if (i % 2 != 0 && j % 2 != 0)
                matrix[i][j] -= 3;
        }
    }

    for (int i = 0; i < x; i++)
    {
        for (int j = 0; j < y; j++)
        {
            std::cout << matrix[i][j];
            if (j + 1 < y)
                std::cout << " ";
        }
        if (i + 1 < x)
            std::cout << std::endl;
    }
}

int main()
{
    solution();
}