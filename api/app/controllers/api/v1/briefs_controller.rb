class Api::V1::BriefsController < Api::V1::BaseController
  def index
    render json: current_user.briefs
  end

  def show
    render json: current_user.briefs.find(params[:id])
  end
end