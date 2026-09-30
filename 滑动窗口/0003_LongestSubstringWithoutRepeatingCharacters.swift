/*
 3. 无重复字符的最长子串 (Longest Substring Without Repeating Characters)
 难度：中等
 链接：https://leetcode.cn/problems/longest-substring-without-repeating-characters/

 给定一个字符串 s ，请你找出其中不含有重复字符的 最长子串 的长度。

 示例 1:
   输入: s = "abcabcbb"
   输出: 3
   解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。

 示例 2:
   输入: s = "bbbbb"
   输出: 1
   解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。

 示例 3:
   输入: s = "pwwkew"
   输出: 3
   解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
        请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。

 提示：
   0 <= s.length <= 5 * 10^4
   s 由英文字母、数字、符号和空格组成

 运行：swift 0003_LongestSubstringWithoutRepeatingCharacters.swift
 */

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        // TODO: 在这里写你的解答
        return 0
    }
}

// MARK: - 测试用例

let testCases: [(input: String, expected: Int)] = [
    ("abcabcbb", 3),   // 示例 1
    ("bbbbb", 1),      // 示例 2
    ("pwwkew", 3),     // 示例 3
    ("", 0),           // 空字符串
    (" ", 1),          // 单个空格
    ("au", 2),         // 全部不重复
    ("dvdf", 3),       // 左边界不能直接跳到末尾
    ("abba", 2),       // 左边界不能回退
    ("tmmzuxt", 5),    // 重复字符在窗口外
    ("!@# !@#", 4),    // 符号与空格
]

let solution = Solution()
var passed = 0
for (index, testCase) in testCases.enumerated() {
    let result = solution.lengthOfLongestSubstring(testCase.input)
    let isPass = result == testCase.expected
    if isPass { passed += 1 }
    print("\(isPass ? "✅" : "❌") Case \(index + 1): s = \"\(testCase.input)\" -> 输出 \(result)，期望 \(testCase.expected)")
}
print("\n通过 \(passed)/\(testCases.count)")
