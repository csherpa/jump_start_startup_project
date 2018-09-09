class Employer < ApplicationRecord
    has_one :user, as: :userable
    has_many :projects
    has_many :developers, through: :projects
    has_many :messages
    has_many :reviews
end
