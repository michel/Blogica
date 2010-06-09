class PostsController < ApplicationController                    
  before_filter :authenticate, :except => [:index,:show]
  def index
    @posts = Post.paginate(:page => params[:page], :order => "created_at desc")                 
    fresh_when :etag => @posts.last.created_at
  end         
  
  def show
    @post = Post.find(params[:id])         
    @comment = Comment.new
    fresh_when :etag => [@post,@comment]    
  end
  
  def new
     @post = Post.new
  end                
  
  def create
    @post = Post.new(params[:post])
    if @post.save 
      flash[:message] = "Post created"
      redirect_to post_path(@post.id)                  
    else                    
      render :action => :new
    end                                  
  end                       
  
  def edit
     @post = Post.find(params[:id])             
  end
  
  def update 
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])             
      flash[:message] = "Post updated"
      redirect_to post_path(@post.id)
    else  
      render :action => :edit         
    end
  end
end
