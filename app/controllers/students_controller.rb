class StudentsController < ApplicationController
  before_action :set_student, only: :show 
  
  def index
    @students = Student.all 
    
  end   

  def activate 
    @student = Student.find_by_id(params[:id]) 
    @student.active = !@student.active 
    @student.save 
    redirect student_path(@student)
  end 



  private

    def set_student
      @student = Student.find_by_id(params[:id])  
      
    end
end