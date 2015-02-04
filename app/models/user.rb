class User < ActiveRecord::Base
  belongs_to :user_answer
  has_many :user_answer

  validates :firstname, :lastname, :email, presence: true
end
