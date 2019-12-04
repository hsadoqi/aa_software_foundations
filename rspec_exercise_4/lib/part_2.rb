def proper_factors(n)
    (1...n).select do |num|
        n.to_f % num.to_f == 0
     end 
end

def aliquot_sum(n)
    proper_factors(n).reduce(:+)
end

def perfect_number?(n)
    n == aliquot_sum(n)
end

def ideal_numbers(n)
    ideal = []
    count = 0
    until ideal.length == n
        count += 1
        ideal << count if perfect_number?(count)
    end
    ideal
end