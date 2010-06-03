class Post
  include MongoMapper::Document         
  
  # Keys
  key :title, String, :required => true
  key :body, String, :required => true
  timestamps!  
  
  # Methods
  def author_name
    "Mr. Harbl"
  end
end