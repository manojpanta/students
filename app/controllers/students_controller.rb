class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
    @addresses = @student.addresses
  end

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.new(student_params)
    if student.save
      flash[:success] = "#{student.name} is created!"
      redirect_to student_path(student)
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    if student.save
      flash[:success] = "#{student.name} updated!"
      redirect_to student_path(student)
    else
      render :edit
    end
  end

  def destroy
    student = Student.destroy(params[:id])
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:name)

  end


end
