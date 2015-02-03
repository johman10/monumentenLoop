class Question < ActiveRecord::Base
  has_one :question_answer
  belongs_to :location

  validates :question, :location_id, presence: true
end
