json.array!(@album_images) do |album_image|
  json.extract! album_image, :id, :file, :album
  json.url album_image_url(album_image, format: :json)
end
