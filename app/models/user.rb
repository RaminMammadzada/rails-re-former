class User < ApplicationRecord
  validates_presence_of :username, message: 'do it'
  validates_presence_of :email, message: 'come on'
  validates :password, presence: true, length: { within: 5..20 }
end
