require 'rails_helper'

describe 'as a user' do
  it 'can create a new address for a student' do
    student = Student.create(name: 'Dione')

    description = 'summer'
    street = '123'
    city = 'denver'
    state = 'co'
    zip = 2345

    visit new_student_address_path(student)
    fill_in 'address[description]', with: description
    fill_in 'address[street]', with: street
    fill_in 'address[city]', with: city
    fill_in 'address[state]', with: state
    fill_in 'address[zip]', with: zip

    click_on 'Create Address'

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content(description)
    expect(page).to have_content(street)
    expect(page).to have_content(city)
    expect(page).to have_content(state)
    expect(page).to have_content(zip)
  end
end
