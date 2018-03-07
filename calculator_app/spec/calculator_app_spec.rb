require_relative '../calculator_app.rb'

describe 'Calculator App' do
  
  before :each do
    @calculator = Calculator.new(10,5)
  end

  it 'creates a calculator object with 2 numbers in the initializer function' do
    expect(@calculator).to be_an_instance_of(Calculator)
    expect(@calculator.method(:initialize).arity).to eq(2)
  end

  it '#add the 2 arguments together' do
    expect(@calculator.add).to eq(10+5)
  end

  it '#subtract the 2 arguments together' do
    expect(@calculator.subtract).to eq(10-5)
  end

  it '#multiply the 2 arguments together' do
    expect(@calculator.multiply).to eq(10*5)
  end

  it '#divide the 2 arguments together' do
    expect(@calculator.divide).to eq(10/5)
  end
end