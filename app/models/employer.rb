class Employer < ApplicationRecord
    has_many :users, as: :userable
    has_many :projects
    has_many :developers, through: :projects
end
