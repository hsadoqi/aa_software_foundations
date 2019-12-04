def is_prime?(n)
    return false if n < 2
    (2...n).each do |num|
        return false if n % num == 0 
    end 
    true
end 

def nth_prime(n)
    primes = []
    count = 0
    until n == primes.length 
        count += 1
        primes << count if is_prime?(count)
    end 
    primes[-1]
end 

def prime_range(min, max)
    primes = []
    (min..max).each do |n|
        primes << n if is_prime?(n)
    end 
    primes
end 