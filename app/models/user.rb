class User < ActiveRecord::Base
  has_many :costs
  has_many :incomes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
