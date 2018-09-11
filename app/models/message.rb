class Message < ApplicationRecord
    belongs_to :employer
    belongs_to :developer

    validates :employer, presence: true
    validates :developer, presence: true

    scope :from_developer, ->(id) { where(developer_id: id) }
end
