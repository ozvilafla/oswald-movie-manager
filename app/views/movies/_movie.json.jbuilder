json.extract! movie, :id, :title, :m_format, :length_hours, :length_minutes, :release_year, :rating, :created_at, :updated_at
json.url movie_url(movie, m_format: :json)
