class User < ActiveRecord::Base
  has_many :costs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
