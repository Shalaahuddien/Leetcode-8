class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        result=''
        # if len(strs)==1:
        #     return strs[0]
        strs.sort(key=len)
        minlength=strs[0]
        for i in range(len(minlength)):
            counter=0
            for j in range(len(strs)):
                if strs[0][0:i+1] in strs[j][0:i+1]:
                    counter=counter+1
                    if counter==len(strs):
                        result=strs[0][0:i+1]
        return result
                
            
        
            