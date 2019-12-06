class CoursesController < ApplicationController
  def index
    student = Student.find(:id)
    @courses = student.courses
  end
end
