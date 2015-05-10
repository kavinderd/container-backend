class Container < ActiveRecord::Base
  belongs_to :user, inverse_of: :containers
  has_many :posts, inverse_of: :container
end
