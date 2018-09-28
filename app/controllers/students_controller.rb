class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  # Automatically opens and renders the associated view.
  # app/views/students.index/html.erb.
  # Also all instance variables created within the
  # action are shared within the associated view

  def show
    @student = Student.find(params[:id])
  end
end
