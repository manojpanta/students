require 'rails_helper'

describe 'as a user' do
  it ' can create new student by filling out a form in student new page' do
    visit new_student_path

    name = 'Manoj'

    fill_in 'student[name]', with: name
    click_on 'Create Student'

    expect(current_path).to eq(student_path("#{Student.last.id}"))

    expect(page).to have_content(name)
  end
end
