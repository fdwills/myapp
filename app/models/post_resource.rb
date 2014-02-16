class PostResource < ActiveRecord::Base
  belongs_to :post, class_name: 'Post'
  belongs_to :resource, class_name: 'Resource'
end
