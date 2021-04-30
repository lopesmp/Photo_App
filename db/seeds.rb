# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(:username => 'admin', 
  :password => 'abc123', 
  :password_confirmation => 'abc123') 

  user.image.attach(params[:image]) # ActionDispatch::Http::UploadedFile object
  user.image.attach(params[:signed_blob_id]) # Signed reference to blob from direct upload
  user.image.attach(io: File.open("/assets/images/default-image.png"), filename: "default-image.png", content_type: "image/png")
  person.avatar.attach(avatar_blob)  








