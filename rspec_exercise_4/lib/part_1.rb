
def my_reject(arr, &prc)
    arr.select {|n| !prc.call(n)}
end 

def my_one?(arr, &prc)
    arr.count(&prc) == 1
end 

def hash_select(hash, &prc)
    selected_hash = {}
    hash.each do |k, v|
        selected_hash[k] = v if prc.call(k, v)
    end 
    selected_hash
end

def xor_select(arr, prc_1, prc_2)
    arr.select do |ele|
        (prc_1.call(ele) || prc_2.call(ele)) && !(prc_1.call(ele) && prc_2.call(ele)) 
    end 
end

def proc_count(val, arr)
    arr.count {|prc| prc.call(val)}
end 