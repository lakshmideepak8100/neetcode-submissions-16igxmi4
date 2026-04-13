class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
        nums_map=set(nums)
        nums_map_list=list(nums_map)
        st_points=[]
        for i in nums_map_list:
            if not(i-1 in nums_map):
                st_points.append(i)
        max_consecutive=0
        for i in st_points:
            st_point=i
            current_consecutive=1
            while(st_point+1 in nums_map):
                current_consecutive+=1
                st_point+=1
            max_consecutive = max(current_consecutive,max_consecutive)
        return max_consecutive




        


        