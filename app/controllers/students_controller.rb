class StudentsController < ApplicationController
  before_action :set_student, only: :show 
  
  def index
    @students = Student.all 
    
  end

  def to_s 
    "#{self.first_name self.last_name}" 
  end    

  def activate 
    @student = Student.find_by(id: params[:id])
    @student.active = !@student.active 
    redirect "/students/#{@student.id}"
  end 



  private

    def set_student
      @student = Student.find_by(id: params[:id])  
      
    end
end