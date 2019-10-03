class Karma < ApplicationRecord
  belongs_to :user
  validates :comment, presence: true 
  validates :comment, length: {minimum: 5}
  validates :comment, length: {maximum: 500}

 end
