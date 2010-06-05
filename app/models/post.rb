class Post
  include MongoMapper::Document         
  
  # Keys 
  key :author_name, String, :required => true          
  key :title, String, :required => true
  key :body, String, :required => true   
  key :location, String , :required => true
  timestamps!       
   
  # Associations                   
  many :comments               
  
         
  def name
    "post"    
  end
end