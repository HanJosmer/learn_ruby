class Book
    attr_writer :title

    def title
        @conjunctions = ["and", "or", "but", "nor"]
        @prepositions = ["at", "by", "for", "in", "of", "on", "to", "up", "as", "over"]
        @articles = ["a", "an", "the"]
        words_in_title = @title.split
        words_in_title.map!.with_index do |word, i|
            if i == 0 || (!@conjunctions.include?(word) && !@prepositions.include?(word) && !@articles.include?(word))
                word.capitalize
            else
                word.downcase
            end
        end
        words_in_title.join(" ")
    end
end