class PostsController < ApplicationController

  def index
    container = Container.find(params[:container_id])
    render json: container.posts, each_serializer: PostSerializer
  end

  def show
    render json: Post.find(params[:id])
  end

  def create
    prms = post_params
    prms[:container_id] = prms[:can_id]
    prms.delete(:can_id)
    post = current_user.posts.build(prms).save!
    render json: post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :can_id)
  end
end
