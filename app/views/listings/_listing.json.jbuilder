json.extract! listing, :id, :course_id, :subject_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
