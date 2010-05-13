# module ActiveModel::Compatible
#   extend ActiveSupport::Concern
#   extend ActiveModel::Naming
# 
#   include ActiveModel::Serializers::Xml
#   include ActiveModel::Serializers::JSON
# 
#   def to_xml(options = {}, &block)
#     options[:except] ||= []
#     options[:except] << :_id 
# 
#     super options do |b|
#       b.id self.id
#       block.call(b) if block_given?
#     end
#   end
# end
# 
# require 'active_model'
# module ActiveModelBehavior
#   module ClassMethods
#     def model_name
#       @_model_name ||= ::ActiveModel::Name.new(self)
#     end   
#   end
#   
#   def to_key
#    self.keys.to_a
#   end
# 
#   def self.included(base)
#     base.extend ClassMethods
#   end
# end
# 
# MongoMapper::Document.append_inclusions(ActiveModelBehavior)
