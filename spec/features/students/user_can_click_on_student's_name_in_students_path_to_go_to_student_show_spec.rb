require 'rails_helper'

describe 'as a user' do
  it 'can click on student name to go to student show' do
    student = Student.create(name: 'Dione')

    visit students_path
    click_on student.name

    expect(current_path).to eq(student_path(student))
  end
end
