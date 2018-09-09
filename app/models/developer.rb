class Developer < ApplicationRecord
  has_many :projects
  has_many :employers, through: :projects
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
