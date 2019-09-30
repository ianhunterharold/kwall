class Karma < ApplicationRecord
  belongs_to :user
  # validates :name, uniqueness: true made valid once you clean up your data base with duplicates 
  validates :comment, presence: true 
  validates :comment, length: {minimum: 5}
  validates :comment, length: {maximum: 500}
  #min length 5 characters, and max 500 characters
 end
