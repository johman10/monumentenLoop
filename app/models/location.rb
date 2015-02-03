class Location < ActiveRecord::Base
  has_many :question

  validates :name, :street, :postal_code, :number, :city, presence: true
end
