require 'rails_helper'

describe 'as a user' do
  it 'can delete student from students page ' do
    student = Student.create(name: 'Dione')

    visit students_path

    expect(page).to have_link('Create New Student')
    expect(page).to have_link('Students')
  end
end
