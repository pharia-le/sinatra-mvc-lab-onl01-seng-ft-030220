class PigLatinizer

    def piglatinize(input)
        split_input(input).map do |word|
            if vowels?(word[0])
                "#{word}way"
            else
                x = index_of_first_vowel(word)
                "#{word[x..-1]}#{word[0..(x-1)]}ay"
            end
        end.join(" ")
    end

    def index_of_first_vowel(word)
        word.split("").find_index do |ele|
            "aeiou".include?(ele.downcase)
        end
    end

    def vowels?(input)
        "aeiou".include?(input.downcase)
    end

    def split_input(input)
        arr = input.split(" ")
    end
end