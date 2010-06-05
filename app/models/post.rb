class Post
  include MongoMapper::Document         
  
  # Keys
  key :title, String, :required => true
  key :body, String, :required => true
  timestamps!       
   
  # Associations                   
  many :comments               
  
  # Methods
  def author_name
    "Mr. Harbl"
  end            
  def name
    "post"
    
  end
end