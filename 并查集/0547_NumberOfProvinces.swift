/*
 547. 省份数量 (Number of Provinces)
 难度：中等
 链接：https://leetcode.cn/problems/number-of-provinces/

 有 n 个城市，其中一些彼此相连，另一些没有相连。如果城市 a 与城市 b 直接相连，
 且城市 b 与城市 c 直接相连，那么城市 a 与城市 c 间接相连。

 省份 是一组直接或间接相连的城市，组内不含其他没有相连的城市。

 给你一个 n x n 的矩阵 isConnected ，其中 isConnected[i][j] = 1 表示第 i 个城市和
 第 j 个城市直接相连，而 isConnected[i][j] = 0 表示二者不直接相连。

 返回矩阵中 省份 的数量。

 示例 1:
   输入: isConnected = [[1,1,0],[1,1,0],[0,0,1]]
   输出: 2

 示例 2:
   输入: isConnected = [[1,0,0],[0,1,0],[0,0,1]]
   输出: 3

 提示：
   1 <= n <= 200
   n == isConnected.length
   n == isConnected[i].length
   isConnected[i][j] 为 1 或 0
   isConnected[i][i] == 1
   isConnected[i][j] == isConnected[j][i]

 运行：swift 0547_NumberOfProvinces.swift
 */

class Solution {
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        // TODO: 在这里写你的解答
        return 0
    }
}

// MARK: - 测试用例

let testCases: [(input: [[Int]], expected: Int)] = [
    ([[1, 1, 0], [1, 1, 0], [0, 0, 1]], 2),                           // 示例 1
    ([[1, 0, 0], [0, 1, 0], [0, 0, 1]], 3),                           // 示例 2
    ([[1]], 1),                                                       // 单个城市
    ([[1, 1, 1], [1, 1, 1], [1, 1, 1]], 1),                           // 全部直接相连
    ([[1, 1, 0, 0], [1, 1, 1, 0], [0, 1, 1, 1], [0, 0, 1, 1]], 1),    // 链式间接相连 0-1-2-3
    ([[1, 0, 0, 1], [0, 1, 0, 0], [0, 0, 1, 1], [1, 0, 1, 1]], 2),    // 间接相连 0-3-2，1 独立
    ([[1, 1, 0, 0], [1, 1, 0, 0], [0, 0, 1, 1], [0, 0, 1, 1]], 2),    // 两组两两相连
    ([[1, 0, 0, 1], [0, 1, 1, 0], [0, 1, 1, 1], [1, 0, 1, 1]], 1),    // 0-3-2-1 绕一圈连通
]

let solution = Solution()
var passed = 0
for (index, testCase) in testCases.enumerated() {
    let result = solution.findCircleNum(testCase.input)
    let isPass = result == testCase.expected
    if isPass { passed += 1 }
    print("\(isPass ? "✅" : "❌") Case \(index + 1): isConnected = \(testCase.input) -> 输出 \(result)，期望 \(testCase.expected)")
}
print("\n通过 \(passed)/\(testCases.count)")
