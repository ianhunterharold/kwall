class Prefill < ApplicationRecord
  belongs_to :user
  validates :selection, presence: true 
end
