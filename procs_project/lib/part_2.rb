def reverser(str, &prc)
    prc.call(str.reverse)
end

def word_changer(str, &prc)
    str.split(" ").map(&prc).join(" ")
end

def greater_proc_value(num, prc_1, prc_2)
    prc_1_result = prc_1.call(num)
    prc_2_result = prc_2.call(num)
    prc_1_result > prc_2_result ? prc_1_result : prc_2_result
end

def and_selector(arr, prc_1, prc_2)
    arr.select{|ele| prc_1.call(ele) && prc_2.call(ele)}
end

def alternating_mapper(arr, prc_1, prc_2)
    arr.map do |ele|
        if arr.index(ele) % 2 == 0 
            prc_1.call(ele)
        else 
            prc_2.call(ele)
        end
    end
end