require 'rails_helper'

describe Address do
  describe 'validations' do
    context 'invalid attributes' do
      it 'is valid with a name' do
        category = Address.new(description: 'summer', street: '13234', city: 'denver', state: 'co', zip: 13243 )
        expect(category).to be_valid
      end
    end
  end
end
