class McqquestionsController < ApplicationController
	@@marks ||= 0
	@@answers ||= []
	@@test_questions ||= []
	def new
		@mcqquestion = Mcqquestion.new
	end

	def edit
		@mcqquestion = Mcqquestion.find(params[:id])
	end

	def index
		@mcqquestion = Mcqquestion.all
		@mcq = Mcqquestion.find_by_sql("select * from mcqquestions ORDER BY RANDOM() limit 10 ");
		@@test_questions = @mcq
	end
	def marks
		@marks = @@marks
		@answers = @@answers
		@@marks = 0
		@@answers = []
	end
	def submit_answer
		@@test_questions.each do |q|
			@ans = params["#{q.id}_answer"]
			if @ans == q.Correct_Option
				@@marks += 1
			end
			@@answers << {:user_ans => @ans, :ques_id => q.id,:correct_ans => q.Correct_Option} 
		end
		redirect_to marks_path
	end

	def show 
		@mcqquestion = Mcqquestion.find(params[:id])
		@test = Test.new
		@ans_count = @@answers.count
	end
	def a 
		@mcqquestion = Mcqquestion.find(params[:id])
	end
	def create
  		@mcqquestion = Mcqquestion.new(mcqquestion_params)
  		if @mcqquestion.save
  			redirect_to @mcqquestion
  		else
  			render 'new'
  		end
	end
	def update 
		@mcqquestion = Mcqquestion.find(params[:id])
		if @mcqquestion.update(mcqquestion_params)
			redirect_to @mcqquestion
		else
			render 'edit'
		end
	end
	def destroy
    @mcqquestion = Mcqquestion.find(params[:id])
    @mcqquestion.destroy
 
    redirect_to mcqquestions_path
  end


 
private
  def mcqquestion_params
    params.require(:mcqquestion).permit(:Question, :Option_A, :Option_B, :Option_c, :Option_D, :Correct_Option)
  end
end
