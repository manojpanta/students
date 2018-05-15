require 'rails_helper'

describe 'as a user' do
  it 'shows name of a student when i visit student path' do
    student = Student.create(name: 'Dione')

    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end
