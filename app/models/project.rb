class Project < ApplicationRecord
    belongs_to :employer
    belongs_to :developer
end
