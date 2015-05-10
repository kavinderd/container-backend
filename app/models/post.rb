class Post < ActiveRecord::Base
  belongs_to :container, inverse_of: :posts
  belongs_to :user, inverse_of: :posts
end
