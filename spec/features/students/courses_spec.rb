require 'rails_helper'

describe "students index page", type: :feature do
  before :each do

    @course_1 = Course.create!(name: 'Math')
    @student_1 = @course_1.students.create(name: "Harry Potter",
                                age: 16,
                                house: "Griffindor")

  end

  it "shows student name, age, and house" do
    visit "/students/@#{student_1.id}"

    expect(page).to have_content(@student_1.courses)

  end


end
