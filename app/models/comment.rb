class Comment                          
  include MongoMapper::Document         

  # Keys
  key :name, String, :required => true
  key :body, String, :required => true        
  key :post_id , ObjectId
  timestamps!            
  
  belongs_to :post
  
  attr_accessor :email   
  
  
end