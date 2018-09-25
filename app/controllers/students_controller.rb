class StudentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @courses = Course.all
  end

  def edit
    @student = Student.find(params[:id])
    @courses = Course.all
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      # StudentMailer.welcome(@student).deliver_now
      redirect_to @student
    else
      render 'new'
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.update!(student_params)
      redirect_to students_path
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path

  end

private
  def student_params
      params.require(:student).permit(:name, :ernumber, :mobile_no, :student_email, :branch_id, :city_id, :date_of_birth ,:photo, course_ids: [] )
  end
end
