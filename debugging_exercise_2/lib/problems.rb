# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(num)
    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end

    true
end

def largest_prime_factor(n)
    primes = []
    (2..n).select do |num|
        if prime?(num) && n % num == 0
            primes << num 
        end 
    end 
    primes.last
end 

def unique_chars?(str)
    all_chars = str.split("")
    unique_chars = str.split("").uniq
    all_chars == unique_chars
end 

def dupe_indices(arr)
    indices = Hash.new {|k, v| k[v] = []}
    arr.each_with_index do |char, i|
        indices[char] << i
    end 
    indices.select {|k, v| v.length > 1}
end 

def ele_count(arr)
    ele_hash = Hash.new(0)
    arr.each do |ele|
        ele_hash[ele] += 1 
    end 

    ele_hash
end 

def ana_array(arr_1, arr_2)
    arr_1_count = ele_count(arr_1)
    arr_2_count = ele_count(arr_2)
    arr_1_count == arr_2_count
end 