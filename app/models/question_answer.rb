class QuestionAnswer < ActiveRecord::Base
  belongs_to :question
  has_many :user_answer

  validates :answer, presence: true
end
