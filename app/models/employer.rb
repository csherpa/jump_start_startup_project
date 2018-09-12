class Employer < ApplicationRecord
  has_many :projects
  has_many :developers, through: :projects
  has_many :reviews
  has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
   "#{self.first_name} #{self.last_name}"
  end
end
