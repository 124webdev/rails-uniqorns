Cloudinary.config_from_url(ENV['CLOUDINARY_URL'])
Cloudinary.config do |config|
  config.secure = true  # Ensure URLs are served over HTTPS
end
