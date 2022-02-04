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
end
