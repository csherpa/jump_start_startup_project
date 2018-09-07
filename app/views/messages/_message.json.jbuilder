json.extract! message, :id, :subject, :body, :date, :developer_id, :employer_id, :created_at, :updated_at
json.url message_url(message, format: :json)
