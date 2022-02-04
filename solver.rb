# frozen_string_literal: true

# class Solver
class Solver
  def factorial(int)
    if int.negative?
      'invalid input'
    else
      int.zero? || int == 1 ? 1 : int * factorial(int - 1)
    end
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(int)
    if (int % 3).zero? && (int % 5).zero?
      'fizzbuzz'
    elsif (int % 5).zero?
      'buzz'
    elsif (int % 3).zero?
      'fizz'
    else
      int.to_s
    end
  end
end
