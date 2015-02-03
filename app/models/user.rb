class User < ActiveRecord::Base
  belongs_to :user_answer
  has_many :user_answer

  validates :firstname, :lastname, :email, :user_answer_id, presence: true
end
