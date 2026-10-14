// 第 1 周作业：3x3 矩阵乘法
// 编译：g++ -std=c++17 -Wall -O2 matrix_mul.cpp -o matrix_mul && ./matrix_mul
// 目标：让输出结果等于矩阵 A（因为 B 是单位矩阵）
#include <iostream>

int main() {
    const int N = 3;

    double A[N][N] = {{1, 2, 3},
                      {4, 5, 6},
                      {7, 8, 9}};

    double B[N][N] = {{1, 0, 0},
                      {0, 1, 0},
                      {0, 0, 1}};   // 单位矩阵

    double C[N][N] = {};            // 结果，全部初始化为 0

    // TODO: 在这里写三重循环，计算 C = A * B
    // 提示：C[i][j] = sum over k of ( A[i][k] * B[k][j] )
    // for (int i = 0; i < N; ++i)
    //     for (int j = 0; j < N; ++j)
    //         for (int k = 0; k < N; ++k)
    //             ...

    std::cout << "A * B = \n";
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            std::cout << C[i][j] << "\t";
        }
        std::cout << "\n";
    }
    return 0;
}
