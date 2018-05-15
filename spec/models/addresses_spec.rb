require 'rails_helper'

describe Address do
  describe 'validations' do
    context 'invalid attributes' do
      it 'is valid with with all the attributes ' do
        student = Student.new(name: 'sam')
        address = Address.new(student: student, description: 'summer', street: '13234', city: 'denver', state: 'co', zip: 13243 )
        expect(address).to be_valid
      end
    end
  end

  describe 'relationships' do
  it 'belongs to a student' do
    student = Student.new(name: 'sam')
    address = Address.new(student: student, description: 'summer', street: '13234', city: 'denver', state: 'co', zip: 13243 )

    expect(address).to respond_to(:student)
  end
end
end
