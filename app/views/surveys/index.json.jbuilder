json.array!(@surveys) do |survey|
  json.extract! survey, :id, :name, :comments, :rating
  json.url survey_url(survey, format: :json)
end
