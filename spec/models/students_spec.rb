require 'rails_helper'

describe Student do
  describe 'validations' do
    context 'invalid attributes' do
      it 'is invalid without a name' do
        student = Student.new
        expect(student).to be_invalid
      end
    end
  end

  it 'has many addresses' do
    student = Student.new(name: 'sam')
    expect(student).to respond_to(:addresses)
  end
end
