class CommentSerializer < ActiveModel::Serializer
  attributes :name, :body

  belongs_to :post
end

class PostSerializer < ActiveModel::Serializer
  has_many :comments
  class CommentSerializer < ActiveModel::Serializer
    attributes :body_short
  end
end
