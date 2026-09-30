/*
 49. 字母异位词分组 (Group Anagrams)
 难度：中等
 链接：https://leetcode.cn/problems/group-anagrams/

 给你一个字符串数组，请你将 字母异位词 组合在一起。可以按任意顺序返回结果列表。

 字母异位词 是由重新排列源单词的所有字母得到的一个新单词。

 示例 1:
   输入: strs = ["eat", "tea", "tan", "ate", "nat", "bat"]
   输出: [["bat"],["nat","tan"],["ate","eat","tea"]]
   解释:
     在 strs 中没有字符串可以通过重新排列来形成 "bat"。
     字符串 "nat" 和 "tan" 是字母异位词，因为它们可以重新排列以形成彼此。
     字符串 "ate"、"eat" 和 "tea" 是字母异位词，因为它们可以重新排列以形成彼此。

 示例 2:
   输入: strs = [""]
   输出: [[""]]

 示例 3:
   输入: strs = ["a"]
   输出: [["a"]]

 提示：
   1 <= strs.length <= 10^4
   0 <= strs[i].length <= 100
   strs[i] 仅包含小写字母

 运行：swift 0049_GroupAnagrams.swift
 */

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        // TODO: 在这里写你的解答
        return []
    }
}

// MARK: - 测试用例

// 题目允许任意顺序返回，比较前先把组内、组间都排好序
func normalize(_ groups: [[String]]) -> [[String]] {
    groups
        .map { $0.sorted() }
        .sorted { $0.lexicographicallyPrecedes($1) }
}

let testCases: [(input: [String], expected: [[String]])] = [
    (["eat", "tea", "tan", "ate", "nat", "bat"], [["bat"], ["nat", "tan"], ["ate", "eat", "tea"]]),  // 示例 1
    ([""], [[""]]),                                            // 示例 2
    (["a"], [["a"]]),                                          // 示例 3
    (["", ""], [["", ""]]),                                    // 多个空字符串
    (["a", "a"], [["a", "a"]]),                                // 重复字符串
    (["abc", "def"], [["abc"], ["def"]]),                      // 没有异位词
    (["ab", "ba", "abc"], [["ab", "ba"], ["abc"]]),            // 长度不同
    (["ddddddddddg", "dgggggggggg"], [["ddddddddddg"], ["dgggggggggg"]]),  // 字母相同但个数不同
]

let solution = Solution()
var passed = 0
for (index, testCase) in testCases.enumerated() {
    let result = solution.groupAnagrams(testCase.input)
    let isPass = normalize(result) == normalize(testCase.expected)
    if isPass { passed += 1 }
    print("\(isPass ? "✅" : "❌") Case \(index + 1): strs = \(testCase.input) -> 输出 \(result)，期望 \(testCase.expected)")
}
print("\n通过 \(passed)/\(testCases.count)")
