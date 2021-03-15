json.array!(@services) do |service|
  json.id service.id
  json.title service.title
  json.description service.description
  json.image service.image
end