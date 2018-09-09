class Review < ApplicationRecord
    belongs_to :developer
    belongs_to :employer
    belongs_to :project
end
