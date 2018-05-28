require 'minitest/autorun'
require 'phrase'

describe "Phrase" do
    describe "palindrome" do
        it "should return false for a non-palindrome" do
            non_palindrome = Phrase.new "apple"
            non_palindrome.palindrome?.must_equal false
        end

        it "should return true for plain palindrome" do
            plain_palindrome = Phrase.new "racecar"
            plain_palindrome.palindrome?.must_equal true
        end

        it "should return true for a mixed-case palindrome" do
            mixed_case = Phrase.new "RaceCar"
            mixed_case.palindrome?.must_equal true
        end

        it "should return true for a palindrome with punctuation" do
            punctuated_palindrome = Phrase.new "Madam, I'm Adam"
            punctuated_palindrome.palindrome?.must_equal true
        end
    end

    describe "letters" do
        it "should return only letters" do
            letters = Phrase.new "Madam, I'm Adam"
            letters.letters.must_equal "MadamImAdam"
        end
    end
end