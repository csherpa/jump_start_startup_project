class Aplication < ApplicationRecord
    belongs_to :developer
    belongs_to :project

    def developer_name
        self.developer.full_name
    end
end
