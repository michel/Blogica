module ApplicationHelper
  def current_location
   Post.first(:order => "created_at desc").location rescue "VTown"
  end
end
