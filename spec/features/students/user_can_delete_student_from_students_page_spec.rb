require 'rails_helper'

describe 'as a user' do
  it 'can delete student from students page ' do
    student = Student.create(name: 'Dione')

    visit students_path
    click_on 'Delete'


    expect(current_path).to eq(students_path)
    expect(page).to_not have_content(student.name)
  end
end
