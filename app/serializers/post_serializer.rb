class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content

  def can_id
    object.container_id
  end
end
