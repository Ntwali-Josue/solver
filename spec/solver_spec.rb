# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength

require './solver'

describe Solver do
  describe '#factorolize' do
    it 'should return the factorial of a number' do
      test_case = Solver.new.factorial(5)
      expect(test_case).to eq 120
    end

    it 'should return nil if the number is less than 0' do
      test_case = Solver.new.factorial(-3)
      expect(test_case).to eq 'invalid input'
    end

    it 'should return 1 if the number is 0' do
      test_case = Solver.new.factorial(0)
      expect(test_case).to eq 1
    end
  end

  describe '#reverse' do
    it 'should return the reverse factorial of a number' do
      test_case = Solver.new.reverse('hello')
      expect(test_case).to eq 'olleh'
    end
  end

  describe '#fizzbuzz' do
    it "should return the 'fizz' if the n is divisible by 3" do
      test_case = Solver.new.fizzbuzz(9)
      expect(test_case).to eq 'fizz'
    end

    it "should return the 'buzz' if the n is divisible by 5" do
      test_case = Solver.new.fizzbuzz(25)
      expect(test_case).to eq 'buzz'
    end

    it "should return the 'fizzbuzz' if the n is divisible by both 3 and 5" do
      test_case = Solver.new.fizzbuzz(15)
      expect(test_case).to eq 'fizzbuzz'
    end

    it 'should return a string if the number is not divisible by either 3 or 5' do
      test_case = Solver.new.fizzbuzz(7)
      expect(test_case).to eq '7'
    end
  end
end

# rubocop:enable Metrics/BlockLength
