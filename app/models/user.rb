class User
  include MongoMapper::Document         
  key :username, String, :required => true
  key :password, String, :required => true
  
end
