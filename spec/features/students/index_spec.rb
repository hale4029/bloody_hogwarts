require 'rails_helper'

describe "students index page", type: :feature do
  before :each do
    @student_1 = Student.create!(name: "Harry Potter",
                                age: 16,
                                house: "Griffindor")

    @student_2 = Student.create!(name: "Herminory G",
                                age: 15,
                                house: "Griffindor")
  end

  it "shows student name, age, and house" do
    visit "/students"

    expect(page).to have_content(@student_1.name)
    expect(page).to have_content(@student_1.age)
    expect(page).to have_content(@student_1.house)

    expect(page).to have_content(@student_2.name)
    expect(page).to have_content(@student_2.age)
    expect(page).to have_content(@student_2.house)
  end


end
