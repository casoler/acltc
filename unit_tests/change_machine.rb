require 'rspec'

class ChangeMachine
  def change(cents)
    arr = []
    remainder = 0
    denominations = [25, 10, 5, 1]

    temp_cents = cents

    denominations.each do |denomination|
      remainder = temp_cents % denomination
      ((temp_cents - remainder) / denomination).times do
        arr << denomination
        temp_cents = temp_cents - denomination
      end
    end

    arr
  end
end

change_machine = ChangeMachine.new
cents = 182
p "The change for " + cents.to_s + " cents is " + change_machine.change(cents).join(", ")


RSpec.describe ChangeMachine do
  describe "#change" do
    it 'should return [1] if given 1' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(1)).to eq([1])
    end

    it 'should return [1, 1] if given 2' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(2)).to eq([1, 1])
    end

    it 'should return [1, 1, 1] if given 3' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(3)).to eq([1, 1, 1])
    end

    it 'should return [5] if given 5' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(5)).to eq([5])
    end  

    it 'should return [5, 1] if given 6' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(6)).to eq([5, 1])
    end

    it 'should return [5, 1, 1, 1, 1] if given 9' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(9)).to eq([5, 1, 1, 1, 1])
    end

    it 'should return [10] if given 10' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(10)).to eq([10])
    end  

    it 'should return [10, 1] if given 11' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(11)).to eq([10, 1])
    end 

    it 'should return [10, 5, 1] if given 16' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(16)).to eq([10, 5, 1])
    end 

    it 'should return [25] if given 25' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(25)).to eq([25])
    end 
    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if given 119' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end  
  end
end 