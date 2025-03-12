// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
// Ex: twoSum([2,7,11,15], 9)
// Time Complexity: O(n)



func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map = [Int: Int]() // Dictionary to store seen numbers
    
    for (index, num) in nums.enumerated() {
        if let prevIndex = map[target - num] {
            return [prevIndex, index]
        }
        map[num] = index
    }
    return []
}
