class Cost < ActiveRecord::Base
  belongs_to :user
  has_many :posts

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
