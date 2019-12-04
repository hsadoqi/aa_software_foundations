def all_words_capitalized?(arr)
    arr.all? {|word| word.capitalize == word}
end

def no_valid_url?(arr)
    url_ends = ["com", "net", "io", "org"]
    arr.none? {|url| url_ends.include?(url.split(".")[-1])}
end

def any_passing_students?(arr)
    arr.any?{|student| (student[:grades].sum / student[:grades].count) >= 75}
end