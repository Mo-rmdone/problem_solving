class Solution:
    def calPoints(self, operations: List[str]) -> int:
        score_stack = []
        for operation in operations:
            if operation == "+":
                score_stack.append(score_stack[-1] + score_stack[-2])
            elif operation == "D":
                score_stack.append(score_stack[-1] << 1)
            elif operation == "C":
               
                score_stack.pop()
            else:
               
                score_stack.append(int(operation))
      
    
        return sum(score_stack)