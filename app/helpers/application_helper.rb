module ApplicationHelper
  def current_location
   Post.criteria.order_by([:created_at,:desc]).first.location
  end
end
