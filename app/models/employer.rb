class Employer < ApplicationRecord
  has_many :projects
  has_many :developers, through: :projects
  has_many :reviews
  has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 # instead of deleting, indicate the user requested a delete & timestamp it  
 
  def soft_delete
    update_attribute(:first_name, "account")
    update_attribute( :last_name , 'deleted')  
    update_attribute(:deleted_at, Time.current)  
  end  

  # ensure user account is active  
  def active_for_authentication?  
    super && !deleted_at  
  end  

  # provide a custom message for a deleted account   
  def inactive_message   
    !deleted_at ? super : :deleted_account  
  end

  def full_name
   "#{self.first_name} #{self.last_name}"
  end
end
