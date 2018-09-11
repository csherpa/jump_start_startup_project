class Review < ApplicationRecord
    belongs_to :developer , optional: true
    belongs_to :project
    belongs_to :employer , optional: true
end
