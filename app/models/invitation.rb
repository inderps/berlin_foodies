class Invitation < ActiveRecord::Base
  validates :email, uniqueness: true
end
