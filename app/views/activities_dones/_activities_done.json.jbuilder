json.extract! activities_done, :id, :user_id, :activities_id, :created_at, :updated_at
json.url activities_done_url(activities_done, format: :json)
