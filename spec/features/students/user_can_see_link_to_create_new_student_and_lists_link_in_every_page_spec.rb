require 'rails_helper'

describe 'as a user' do
  it ' shows nav bar in students path ' do
    visit students_path

    expect(page).to have_link('Create New Student')
    expect(page).to have_link('Students')
  end

  it 'show nav bar in new student path ' do
    visit new_student_path

    expect(page).to have_link('Create New Student')
    expect(page).to have_link('Students')
  end

  it 'can shows nav bar in student path ' do
    student = Student.create(name: 'Dione')

    visit student_path(student)

    expect(page).to have_link('Create New Student')
    expect(page).to have_link('Students')
  end
  it 'can shows nav bar in edit student path ' do
    student = Student.create(name: 'Dione')

    visit edit_student_path(student)

    expect(page).to have_link('Create New Student')
    expect(page).to have_link('Students')
  end
end
