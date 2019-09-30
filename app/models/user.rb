class User < ApplicationRecord
  has_many :karmas
  has_many :prefills
  has_many :group_users
  has_many :groups, through: :group_users

end
