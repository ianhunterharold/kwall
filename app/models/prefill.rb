class Prefill < ApplicationRecord
  belongs_to :user
  validates :selection, presence: true 
  validates :selection, uniqueness: true
end
