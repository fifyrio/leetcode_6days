/*
 703. 数据流中的第 K 大元素 (Kth Largest Element in a Stream)
 难度：简单
 链接：https://leetcode.cn/problems/kth-largest-element-in-a-stream/

 设计一个找到数据流中第 k 大元素的类（class）。注意是排序后的第 k 大元素，不是第 k 个不同的元素。

 请实现 KthLargest 类：
   - KthLargest(int k, int[] nums) 使用整数 k 和整数流 nums 初始化对象。
   - int add(int val) 将 val 插入数据流 nums 后，返回当前数据流中第 k 大的元素。

 示例 1:
   输入:
     ["KthLargest", "add", "add", "add", "add", "add"]
     [[3, [4, 5, 8, 2]], [3], [5], [10], [9], [4]]
   输出:
     [null, 4, 5, 5, 8, 8]
   解释:
     KthLargest kthLargest = new KthLargest(3, [4, 5, 8, 2]);
     kthLargest.add(3);   // 返回 4
     kthLargest.add(5);   // 返回 5
     kthLargest.add(10);  // 返回 5
     kthLargest.add(9);   // 返回 8
     kthLargest.add(4);   // 返回 8

 示例 2:
   输入:
     ["KthLargest", "add", "add", "add", "add"]
     [[4, [7, 7, 7, 7, 8, 3]], [2], [10], [9], [9]]
   输出:
     [null, 7, 7, 7, 8]
   解释:
     KthLargest kthLargest = new KthLargest(4, [7, 7, 7, 7, 8, 3]);
     kthLargest.add(2);   // 返回 7
     kthLargest.add(10);  // 返回 7
     kthLargest.add(9);   // 返回 7
     kthLargest.add(9);   // 返回 8

 提示：
   0 <= nums.length <= 10^4
   1 <= k <= nums.length + 1
   -10^4 <= nums[i] <= 10^4
   -10^4 <= val <= 10^4
   最多调用 add 方法 10^4 次

 运行：swift 0703_KthLargestElementInAStream.swift
 */

class KthLargest {

    init(_ k: Int, _ nums: [Int]) {
        // TODO: 在这里写你的解答
    }

    func add(_ val: Int) -> Int {
        // TODO: 在这里写你的解答
        return 0
    }
}

// MARK: - 测试用例

let testCases: [(k: Int, nums: [Int], adds: [Int], expected: [Int])] = [
    (3, [4, 5, 8, 2], [3, 5, 10, 9, 4], [4, 5, 5, 8, 8]),     // 示例 1
    (4, [7, 7, 7, 7, 8, 3], [2, 10, 9, 9], [7, 7, 7, 8]),    // 示例 2
    (1, [], [-3, -2, -4, 0, 4], [-3, -2, -2, 0, 4]),         // 初始为空，k = 1
    (2, [0], [-1, 1, -2, -4, 3], [-1, 0, 0, 0, 1]),          // 初始元素少于 k
    (3, [5, -1], [2, 1, -1, 3, 4], [-1, 1, 1, 2, 3]),        // 负数与重复值
]

var passed = 0
for (index, testCase) in testCases.enumerated() {
    let kthLargest = KthLargest(testCase.k, testCase.nums)
    let result = testCase.adds.map { kthLargest.add($0) }
    let isPass = result == testCase.expected
    if isPass { passed += 1 }
    print("\(isPass ? "✅" : "❌") Case \(index + 1): k = \(testCase.k), nums = \(testCase.nums), add \(testCase.adds) -> 输出 \(result)，期望 \(testCase.expected)")
}
print("\n通过 \(passed)/\(testCases.count)")
