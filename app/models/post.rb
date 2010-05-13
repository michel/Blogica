class Post
  include MongoMapper::Document
  key :title, String, :required => true
  key :body, String, :required => true
  timestamps!  
  
  def author_name
    "Mr. Harbl"
  end
end