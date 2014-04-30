require 'spec_helper'

describe Integer do
    it "should return true if a number's a palindrome" do
        number = 101
        number.palindrome?.should == true
    end

    it "should return false if a string's not a palindrome" do
        number = 100
        number.palindrome?.should == false
    end

    it "should know the next palindrome" do
        number = 123
        number.next_palindrome.should == 131
    end
end
