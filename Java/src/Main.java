import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int x = sc.nextInt();
        int y = sc.nextInt();

        int[][] matrix = new int[x][y];

        for (int j = 0; j < matrix.length; j++) {
            for (int k = 0; k < matrix[j].length; k++) {
                matrix[j][k] = sc.nextInt();
            }
        }

        crazyMatrix(matrix);

        for (int i = 0; i < matrix.length; i++) {
            String print = "";
            for (int j = 0; j < matrix[i].length; j++) {
                print += matrix[i][j] + " ";
            }
            System.out.println(print.substring(0, print.length()-1));
        }
    }

    public static void crazyMatrix(int [][] matrix) {
        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix[i].length; j++) {
                if (i % 2 == 0) matrix[i][j] += 1;
                if (j % 2 == 0) matrix[i][j] += 2;
                if (i % 2 != 0 && j % 2 != 0) matrix[i][j] -= 3;
            }
        }
    }
}