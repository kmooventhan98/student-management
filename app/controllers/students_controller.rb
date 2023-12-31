class StudentsController < ApplicationController
	def index
		@students = Student.all.order(created_at: :desc)
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		if @student.save
			redirect_to students_path
		else
			render :new, status: :unprocessable_entity
		end
	end

	def show
		@student = Student.find(params[:id])
	end

	def edit
		@student = Student.find(params[:id])
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy!
		redirect_to student_path
	end
	private
	def student_params
		params.require(:student).permit(:first_name, :last_name, :email)
	end
end