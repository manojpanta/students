require 'rails_helper'

describe 'as a user' do
  it ' can edit student name in edit page' do
    student = Student.create!(name: 'Manoj')

    name = 'Sam'

    visit edit_student_path(student)

    fill_in 'student[name]', with: name
    click_on 'Update Student'

    expect(current_path).to eq(student_path(student))

    expect(page).to have_content(name)
  end
end
