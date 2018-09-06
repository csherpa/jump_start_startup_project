class Developer < ApplicationRecord
   has_many :users, as: :userable
   has_many :projects
   has_many :employers, through: :projects
end
