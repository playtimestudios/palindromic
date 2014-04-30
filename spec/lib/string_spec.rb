require 'spec_helper'

describe String do
    it "should return true if a string's a palindrome" do
        string = String.new('mom')
        string.palindrome?.should == true
    end

    it "should return false if a string's not a palindrome" do
        string = String.new('moo')
        string.palindrome?.should == false
    end
end
