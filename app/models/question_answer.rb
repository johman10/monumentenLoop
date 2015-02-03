class QuestionAnswer < ActiveRecord::Base
  belongs_to :question
  has_many :user_answer

  validates :answer, :question_id, presence: true
end
