class Developer < ApplicationRecord
  # after_create :set_default_avatar



  has_many :projects
  has_many :employers, through: :projects
  has_many :reviews
  has_many :aplications
  has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  # def set_default_avatar
  #   self.update(image: "http://www.orangegnome.com/identicon/identicon.php?string=Orange%20Gnome&size=250")
  # end

end
