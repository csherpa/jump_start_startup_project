class Message < ApplicationRecord
  belongs_to :developer
  belongs_to :employer
end
