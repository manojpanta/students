# require 'rails_helper'
#
# describe 'as a user' do
#   it 'can  see all the courses for a student on student path' do
#     student = Student.create(name: 'Dione')
#     course1 = Course.create!(name: 'Science', student: student)
#     course2 = Course.create!(name: 'Math', student: student)
#
#     visit student_path(student)
#
#     expect(page).to have_content(course1.name)
#     expect(page).to have_content(course2.name)
#   end
# end
