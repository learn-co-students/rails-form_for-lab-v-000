json.array!(@school_classes) do |school_class|
  json.extract! school_class, :id, :title, :room_number
  json.url school_class_url(school_class, format: :json)
end
