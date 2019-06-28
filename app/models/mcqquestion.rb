class Mcqquestion < ApplicationRecord
	validates :Question, presence: true,
                    length: { minimum: 5 }
    validates :Option_A, presence: true
    validates :Option_B, presence: true
    validates :Option_c, presence: true
    validates :Option_D, presence: true
    validates :Correct_Option, presence: true,
    length: {maximum: 1}
    has_many :tests
end