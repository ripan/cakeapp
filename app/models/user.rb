class User < ActiveRecord::Base
  has_many :user_tabs
  has_many :tabs, through: :user_tabs
end
