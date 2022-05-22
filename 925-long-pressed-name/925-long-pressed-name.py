class Solution:
    def isLongPressedName(self, name: str, typed: str) -> bool:
        name_deque = deque(name)
        typed_deque = deque(typed)
        
        
        while len(name_deque) > 0:
            popped_name_char = name_deque.popleft()
            consecutive_name_char_count = 0
            
            while len(name_deque) > 0 and name_deque[0] == popped_name_char:
                name_deque.popleft()
                consecutive_name_char_count += 1
            
            if len(typed_deque) > 0:
                popped_typed_char = typed_deque.popleft()
            else:
                return False 
            
            if popped_typed_char != popped_name_char:
                return False
            
            consecutive_typed_char_count = 0

            while len(typed_deque) > 0 and typed_deque[0] == popped_typed_char:
                typed_deque.popleft()
                consecutive_typed_char_count += 1

            if consecutive_name_char_count > consecutive_typed_char_count:
                return False
        
        if len(typed_deque) > 0:
            return False
        else:
            return True
            
        
        
            
            
            
            