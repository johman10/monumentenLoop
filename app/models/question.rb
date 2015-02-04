class Question < ActiveRecord::Base
  has_one :question_answer
  belongs_to :location

  validates :question, presence: true

  accepts_nested_attributes_for :question_answer
end
