class Project < ApplicationRecord
    belongs_to :employer
    belongs_to :developer, optional: true
    has_many :reviews
    has_many :aplications

    filterrific(
        available_filters: [
          :project_status,
          :plattform_mobile,
          :plattform_desktop,
          :platform_tablet,
          :assets_text,
          :assets_images,
          :assets_videos,
          :assets_audio,
          :assets_database,
          :due_date_less_then_month,
          :due_date_one_month,
          :due_date_three_month, 
          :due_date_plus_three_month,
          :pages_landing_pages,
          :pages_two_pages,
        ]
      )

    scope :plattform_mobile, ->(query) { where(plattform_mobile: query) }
    scope :plattform_desktop, ->(query) { where(plattform_desktop: query) }
    scope :project_status, ->(query) { where(project_status: query) }
    scope :platform_tablet, ->(query) { where(platform_tablet: query) }
    scope :assets_text, ->(query) { where(assets_text: query) }
    scope :assets_images, ->(query) { where(assets_images: query) }
    scope :assets_videos, ->(query) { where(assets_videos: query) }
    scope :assets_audio, ->(query) { where(assets_audio: query) }
    scope :assets_database, ->(query) { where(assets_database: query) }
    scope :due_date_less_then_month, ->(query) { where(due_date_less_then_month: query) }
    scope :due_date_one_month, ->(query) { where(due_date_one_month: query) }
    scope :due_date_three_month, ->(query) { where(due_date_three_month: query) }
    scope :due_date_plus_three_month, ->(query) { where(due_date_plus_three_month: query) }
    scope :pages_landing_pages, ->(query) { where(pages_landing_pages: query) }
    scope :pages_two_pages, ->(query) { where(pages_two_pages: query) }
end
