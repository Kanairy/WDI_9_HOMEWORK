require 'pry'

# Normalized Phone Number

# Write a program that cleans up user-entered phone numbers so that they can be sent SMS messages.
#
# The rules are as follows:
#
# * If the phone number is less than 10 digits assume that it is bad number
# * If the phone number is 10 digits assume that it is good
# * If the phone number is 11 digits and the first number is 1, trim the 1 and use the first 10 digits
# * If the phone number is 11 digits and the first number is not 1, then it is a bad number
# * If the phone number is more than 11 digits assume that it is a bad number

# We've provided tests, now make them pass.
#
# Hint: Only make one test pass at a time. You can turn off tests by sending the message `skip` to it:
class Phone

  def initialize(phone_number)

    phone_number = phone_number.tr('()-.', '').split(' ').join('')

    if phone_number.split('').first == '1' && phone_number.length > 10
      @phone_number = phone_number[1..10]
    elsif phone_number.length == 11 || phone_number.length == 9
      @phone_number = "0000000000"
    else
      @phone_number = phone_number
    end

  end

  def number
    @phone_number
  end

  def area_code
    @phone_number.split('').first(3).join('')
  end

  def to_s
    @phone_number = "(#{area_code}) #{@phone_number[3..5]}-#{@phone_number[6..9]}"
  end

end

binding.pry
