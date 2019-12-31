def strange_sums(arr)
    sums = 0
    arr.each_with_index do |num1, idx1|
        arr.each_with_index do |num2, idx2|
            if idx2 > idx1  && (num1 + num2) == 0
                sums += 1
            end
        end
    end
    sums
end

def pair_product(arr, product)
end