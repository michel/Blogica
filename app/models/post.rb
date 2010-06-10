class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  
  # Keys 
  field :author_name 
  field :title
  field :body
  field :location
     
  # Associations                   
  embeds_many :comments               
  
  # Validations
  validates_presence_of :author_name, :title, :body, :location
         
  def name
    "post"    
  end
end