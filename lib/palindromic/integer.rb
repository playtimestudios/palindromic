class Integer
    def next_palindrome(integer = nil)
        integer ||= self
        number_as_string = integer.to_s
        half = number_as_string.length / 2.0

        palindrome_split = {}
        palindrome_split[:beginning] = number_as_string[0..half.floor - 1]
        increment = 1.1 * 10 ** (number_as_string.length / 2)

        if half % 1 != 0
            palindrome_split[:middle] = number_as_string[half.floor]
            increment = 10 ** (number_as_string.length / 2)
        else
            palindrome_split[:middle] = ''
        end

        palindrome = Integer(palindrome_split[:beginning] + palindrome_split[:middle] + palindrome_split[:beginning].reverse)

        if palindrome > integer
            next_palindrome = palindrome
        elsif palindrome_split[:middle] != '9'
            next_palindrome = palindrome + increment
        else
            increment = 10 ** ((number_as_string.length / 2) + 1)
            rounded_up = ((integer / increment) + 1) * increment
            next_palindrome = next_palindrome(rounded_up)
        end

        return next_palindrome.to_i
    end

    def palindrome?
        self.to_s == self.to_s.reverse
    end
end
