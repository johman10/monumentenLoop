class UserAnswer < ActiveRecord::Base
  belongs_to :question_answer
  belongs_to :user
  has_one :user

  validates :answer, :question_answer_id, :user_id, presence: true
end
