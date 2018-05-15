require 'rails_helper'

describe 'as a user' do
  it 'can see all the addresses for a student on student show page' do
    student = Student.create!(name: 'sam')
    description1 = 'summer'
    street1 = 'denver'
    city1 = 'denver'
    state1 = 'co'
    zip1 = 13243
    Address.create!(student: student,
                    description: description1,
                    street: street1,
                    city: city1,
                    state: state1,
                    zip: zip1)
    description2 = 'winter'
    street2 = 'thornton'
    city2 = 'thornton'
    state2 = 'co'
    zip2 = 23243
    Address.create!(student: student,
                    description: description2,
                    street: street2,
                    city: city2,
                    state: state2,
                    zip: zip2)

    visit student_path(student)

    expect(page).to have_content(description1)
    expect(page).to have_content(description2)
    expect(page).to have_content(street1)
    expect(page).to have_content(street2)
    expect(page).to have_content(city1)
    expect(page).to have_content(city2)
    expect(page).to have_content(zip1)
    expect(page).to have_content(zip2)
    expect(page).to have_content(state1)
    expect(page).to have_content(state2)
  end
end
