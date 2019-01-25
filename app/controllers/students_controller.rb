class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @activation = "inactive"
    if @student.active
      @activation = "active"
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
