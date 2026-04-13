class Solution:
    def hasDuplicate(self, nums: List[int]) -> bool:
        num_mem={"default"}
        for i in nums: 
            if i in num_mem:
                return True
            else:
                num_mem.add(i)
        return False
            

        

        

        