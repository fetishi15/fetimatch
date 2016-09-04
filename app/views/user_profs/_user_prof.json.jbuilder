json.extract! user_prof, :id, :age, :img, :place, :name, :tall, :weight, :sex, :body_type, :hobby, :created_at, :updated_at
json.url user_prof_url(user_prof, format: :json)