class Project < ApplicationRecord
    belongs_to :employer
    belongs_to :developer, optional: true
    has_many :reviews

    filterrific(
        available_filters: [
          :plattform_mobile,
          :plattform_desktop,
        ]
      )

    scope :plattform_mobile, ->(query) { where(plattform_mobile: query) }
    scope :plattform_desktop, ->(query) { where(plattform_desktop: query) }
end
