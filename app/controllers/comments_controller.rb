class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])  

    return  render :text => "spammer", :layout => false if !@comment.email.blank?
    
    if @comment.save                                           
      render :partial => "comment", :layout => false , :locals => {:comment => @comment}
    else                                                             
      render :text => @comment.errors.full_messages.join("<br />\n"), :status => 500 
    end
  end       
  

  
end