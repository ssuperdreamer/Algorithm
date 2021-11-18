//Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
//
//Note that you must do this in-place without making a copy of the array.
//
//
//
//Example 1:
//
//Input: nums = [0,1,0,3,12]
//Output: [1,3,12,0,0]
//Example 2:
//
//Input: nums = [0]
//Output: [0]
//
//
//Constraints:
//
//1 <= nums.length <= 104
//-231 <= nums[i] <= 231 - 1

//Runtime Memory
//168 ms   15.1 MB
class MySolution {
    func moveZeroes(_ nums: inout [Int]) {
      
        let oldCount = nums.count
        nums.removeAll(where: { $0 == 0})

        let newCount = nums.count
        
        let appendZeroNumber = oldCount - newCount
        
        for _ in 0..<appendZeroNumber {
            nums.append(0)
        }
    }
}

class MostVoteSolution {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroIndex:Int = 0
        for index in 0..<nums.count {
            if nums[index] != 0 {
                nums.swapAt(index, zeroIndex)
                zeroIndex  += 1
            }
        }
    }
}

var a:[Int] = [1,0,2,0,3,4,5,6,0,0]
var b:[Int] = [1,0,2,0,3,4,5,6,0,0]
MySolution().moveZeroes(&a)
MostVoteSolution().moveZeroes(&b)
