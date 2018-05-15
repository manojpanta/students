require 'rails_helper'

describe 'as a user' do
  it 'shows name of a students when i visit students path' do
    student1 = Student.create(name: 'matt')
    student2 = Student.create(name: 'tyler')
    student3 = Student.create(name: 'judson')

    visit students_path

    expect(page).to have_content(student1.name)
    expect(page).to have_content(student2.name)
    expect(page).to have_content(student3.name)
  end
end
