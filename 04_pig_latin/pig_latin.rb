#write your code here

$consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z"];
$vowels = ["a", "e", "i", "o", "u"];

def pig_latin raw_word
    raw_letters = raw_word.split("")
    while ($consonants.include?(raw_letters[0])) do
        if (raw_letters[0] == "q" && raw_letters[1] == "u")
            2.times {raw_letters.push(raw_letters.shift)}
            next
        end
        raw_letters.push(raw_letters.shift)
    end
    raw_letters.push("ay")
    raw_letters.join("")
end

def translate raw_text
    # break string into words
    raw_words = raw_text.split(" ")

    # call pig_latin method on each word
    cipher_words = []
    raw_words.each do |word|
        cipher_words.push(pig_latin word)
    end
    cipher_words.join(" ")
end