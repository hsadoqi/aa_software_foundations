def palindrome?(str)
    str.split("").each_with_index do |char, i|
        if str[i] != str[-i - 1]
          return false
        end
      end
    
    return true
end

def substrings(str)
    subs = []

    (0...str.length).each do |start_idx|
        (start_idx...str.length).each do |end_idx|
            subs << str[start_idx..end_idx]
        end
    end

    subs
end

def palindrome_substrings(str)
    substrings(str).select do |str|
        palindrome?(str) && str.length > 1
    end 
end

