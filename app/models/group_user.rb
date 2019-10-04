class GroupUser < ApplicationRecord
  belongs_to :group
  belongs_to :user 
  validates :group_id, uniqueness:  {scope: :user_id,
  message: "can only join a group once"}
end
