class Message < ApplicationRecord
    belongs_to :employer
    belongs_to :developer

    validates :employer, presence: true
    validates :developer, presence: true
    validates :body, presence: true

    scope :from_developer, ->(id) { where(developer_id: id) }
    scope :from_employer, ->(id) { where(employer_id: id) }

    def set_user_ids(current_user, recipient_id)
        if current_user.is_a? Developer
            self.sender = 'developer'
            self.developer_id = current_user.id
            self.employer_id = recipient_id
        elsif current_user.is_a? Employer
            self.sender = 'employer'
            self.employer_id = current_user.id
            self.developer_id = recipient_id
        end
    end
end
