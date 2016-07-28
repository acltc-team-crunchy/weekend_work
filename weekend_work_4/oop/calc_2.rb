# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

require 'rspec'

module SimpleArithmetic
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end



class SimpleCalculator
  include SimpleArithmetic

end

class FancyCalculator
  include SimpleArithmetic
  
  def square_root(number)
    Math.sqrt(number)
  end

end


RSpec.describe SimpleCalculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calc = SimpleCalculator.new
      sum = calc.add(4,5)
      expect(sum).to eq(9) 
    end

    it 'should return the square root of a number' do
      calc = SimpleCalculator.new
      square_root = calc.square_root(16)
      expect(square_root).to eq(4)
    end
  end


end


RSpec.describe FancyCalculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calc = FancyCalculator.new
      sum = calc.add(4,5)
      expect(sum).to eq(9) 
    end

    it 'should return the square root of a number' do
      calc = FancyCalculator.new
      square_root = calc.square_root(16)
      expect(square_root).to eq(4)
    end
  end


end