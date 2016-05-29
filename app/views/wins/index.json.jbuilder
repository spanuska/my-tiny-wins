json.array!(@wins) do |win|
  json.extract! win, :id, :description
  json.url win_url(win, format: :json)
end
