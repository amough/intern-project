class Test < ApplicationRecord
	has_many :mcqquestions
	belongs_to :user
end