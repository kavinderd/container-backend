class ContainersController < ApplicationController

  def show
    render json: Container.find(params[:id])
  end

  def index
    render json: current_user.containers, each_serializer: ContainerSerializer
  end

  def create
    @container = current_user.containers.build(container_params).save!
    render json: @container
  end

  private

  def container_params
    params.require(:container).permit(:user_id, :name, :description)
  end
end
