require_relative './stack'

# your code here

# def balancing_parentheses(input_string)
#     stack = Stack.new
  
#     input_string.each_char do |char|
#       if char == '('
#         stack.push(char)
#       elsif char == ')'
#         return false if stack.empty? # Unbalanced if closing parenthesis found and the stack is empty
#         stack.pop
#       end
#     end
  
#     stack.size # The number of additional parentheses needed to make it balanced
# end


def balancing_parentheses(input_string)
    stack = Stack.new
    additional_parentheses = 0
  
    input_string.each_char do |char|
      if char == '('
        stack.push(char)
      elsif char == ')'
        if stack.empty?
          additional_parentheses += 1
        else
          stack.pop
        end
      end
    end
  
    additional_parentheses += stack.size
  
    additional_parentheses
  end