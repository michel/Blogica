class PostsController < ApplicationController                    
  before_filter :authenticate, :except => [:index,:show]
  def index
    @posts = Post.criteria.order_by([:created_at,:desc]).paginate(:page => params[:page])                 
  end         
  
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
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
