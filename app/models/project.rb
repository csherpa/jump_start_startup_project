class Project < ApplicationRecord
    belongs_to :employer
    belongs_to :developer, optional: true

end
