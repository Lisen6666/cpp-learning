# cpp-learning

C++ 零基础 → 能手写控制算法（卡尔曼滤波 / LQR）的学习记录。

## 配套文档
- 学习计划与打卡：`6个月学习打卡表.xlsx`
- C++ 路线：`指南1_C++环境搭建与语法学习路线.md`
- 控制理论路线：`指南2_卡尔曼滤波与LQR零基础学习路线.md`

## 目录说明
| 目录 | 内容 | 对应阶段 |
|---|---|---|
| `01_hello` | 环境验证、Hello World | 第 1 周 |
| `02_matrix` | 矩阵运算练习（数组 → 函数 → class） | 第 1—2 月 |
| `03_kalman` | 卡尔曼滤波：先 Python 跑通，再 C++ 实现 | 第 2—4 月 |
| `04_lqr` | LQR：Riccati 方程求解 + 倒立摆/四旋翼 | 第 4—5 月 |
| `05_project` | 整合项目（EKF + LQR + 仿真 + 演示） | 第 6 月 |

## 编译命令速查
```bash
# 单个文件
g++ -std=c++17 -Wall -O2 main.cpp -o main && ./main

# 多文件
g++ -std=c++17 -Wall -O2 main.cpp matrix.cpp -o main && ./main

# 需要 Eigen 时
g++ -std=c++17 -Wall -O2 -I/usr/include/eigen3 main.cpp -o main

# 带调试信息
g++ -std=c++17 -Wall -g main.cpp -o main
```

## 在 VS Code 里打开
```bash
cd ~/cpp-learning && code .
```
> 左下角必须显示 `WSL: Ubuntu`，否则说明没连进 Linux 环境。
