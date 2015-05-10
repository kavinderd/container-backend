class ContainerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :posts,embed: :ids
end
