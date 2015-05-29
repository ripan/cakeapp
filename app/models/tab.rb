class Tab < ActiveRecord::Base
  belongs_to :venue
  has_many :user_tabs
  has_many :users, through: :user_tabs
end
