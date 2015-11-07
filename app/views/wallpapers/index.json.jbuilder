json.array!(@wallpapers) do |wallpaper|
  json.extract! wallpaper, :id, :name, :description, :picture
  json.url wallpaper_url(wallpaper, format: :json)
end
