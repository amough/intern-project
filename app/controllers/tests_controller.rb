class TestsController < ApplicationController
	def new
		@mcqquestion = Mcqquestion.find_by_id(params[:id])
		@test = Test.all 
	end
	def index
		@mcqquestion = Mcqquestion.find_by_sql("select * from mcqquestions ORDER BY RANDOM() limit 10 ");
	end
	def show 
		@mcqquestion = Mcqquestion.find(params[:id])
	end
	def create
		@mcqquestion = Mcqquestion.find_by_id(params[:id])
		@test = Test.all 
	end

	
end