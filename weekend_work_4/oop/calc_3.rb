# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

require 'rspec'

class SimpleCalculator

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

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

RSpec.describe SimpleCalculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calc = SimpleCalculator.new
      sum = calc.add(4,5)
      expect(sum).to eq(9) 
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
  end
    
  describe '#square_root' do
    it 'should return the square root of a number' do
      calc = FancyCalculator.new
      square_root = calc.square_root(16)
      expect(square_root).to eq(4)
    end
  end

end

RSpec.describe WhizBangCalculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calc = WhizBangCalculator.new
      sum = calc.add(4,5)
      expect(sum).to eq(9) 
    end
  end

  describe '#square_root' do
    it 'should return the square root of a number' do
      calc = WhizBangCalculator.new
      square_root = calc.square_root(16)
      expect(square_root).to eq(4)
    end
  end

  describe '#hypotenuse' do
    it 'should find the length of the hypotenuse' do
      calc = WhizBangCalculator.new
      hypotenuse_length = calc.hypotenuse(3,4)
      expect(hypotenuse_length).to eq(5)
    end
  end


end

