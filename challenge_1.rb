# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator

# =========================================
# Your code to define the method goes here.
# =========================================

class Numeric #borrowed a method to convert float output to currency
  def to_currency( pre_symbol='$', thousands=',', decimal='.',post_symbol=nil )
    "#{pre_symbol}#{
      ( "%.2f" % self ).gsub(
        /(\d)(?=(?:\d{3})+(?:$|\.))/,
        "\\1#{thousands}"
      )
    }#{post_symbol}"
  end
end

def pmt(rate, nper, pv)
  payment = (pv * rate * ((1 + rate)**nper)/((1 + rate)**nper - 1))
  payment.to_currency
end

puts "Your monthly payment will be #{pmt(0.01, 60, 30000)}."
