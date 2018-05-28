class Phrase

    private
    attr_reader :content

    public
    def initialize content
        @content = content
    end

    def palindrome?
        text = letters.downcase
        text.reverse == text
    end

    def letters
        content.gsub /\W+/, ''
    end

end