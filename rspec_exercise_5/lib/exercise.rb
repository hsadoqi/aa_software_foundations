def zip(*args)
    (0...args.first.length).map do |i|
        args.map {|arr| arr[i]}
    end
end

def prizz_proc(arr, prc_1, prc_2)
    arr.select do |ele|
        (prc_1.call(ele) || prc_2.call(ele)) && !(prc_1.call(ele) && prc_2.call(ele))
    end
end

def zany_zip(*arrs)
    length = arrs.map(&:length).max

    (0...length).map do |i|
        arrs.map {|arr| arr[i]}
    end
end

def maximum(arr, &prc)
    return nil if arr.empty?
    largest_ele = arr.first
    arr.each do |ele|
        if prc.call(ele) >= prc.call(largest_ele)
            largest_ele = ele 
        end 
    end 
    largest_ele
end 

def my_group_by(arr, &prc)
    group_hash = Hash.new{|h, k| h[k] = []}
    arr.each do |ele|
        key = prc.call(ele)
        group_hash[key] << ele
    end 
    group_hash
end

def max_tie_breaker(arr, tie_breaker, &prc)
    max_ele = arr.first
    arr.each do |ele|
        ele_result = prc.call(ele)
        max_result = prc.call(max_ele)
        if ele_result > max_result 
            max_ele = ele
        elsif ele_result == max_result && tie_breaker.call(ele) > tie_breaker.call(max_ele)
            max_ele = ele
        end
    end
    max_ele
end

def remove_chars(word)
    indices = vowels(word)
    word[indices.first..indices.last]
end

def vowels(word)
    indices = []
    word.each_char.with_index do |char, i|
        indices << i if "aeiou".include?(char)
    end
    indices
end 

def silly_syllables(str)
    str.split(" ").map do |word|
        if vowels(word).length < 2 
            word
        else 
            remove_chars(word)
        end
    end.join(" ")
end
