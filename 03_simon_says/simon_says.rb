#write your code here

def echo input
    input.to_s
end

def shout input
    input.to_s.upcase
end

def repeat input, reps=2
    output = Array.new
    reps.times {output.push input}
    output.join(" ")
end

def start_of_word input, number_of_letters=1
    input.slice(0, number_of_letters)
end

def first_word input
    # strip leading whitespace
    input = input.lstrip
    # find index of first whitespace following
    index = input.index(" ")
    # slice string up to white space
    input.slice(0, index)
end

def titleize input
    little_words = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or", "nor", "over"]
    input_words = input.split(" ")
    capitalized_words = input_words.map.with_index do |word, i|
        if i == 0 || !little_words.include?(word)
            word.capitalize
        else
            word.downcase
        end
    end
    capitalized_words.join(" ")
end