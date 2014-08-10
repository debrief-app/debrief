class Api::V1::BriefsController < Api::V1::BaseController
  def index
    render json: current_user.briefs
  end

  def show
    render json: current_user.briefs.find(params[:id])
  end

  def create
    brief = Brief.new(brief_params)
    brief.user = current_user
    brief.save
    render json: brief
  end

  def update
    brief = current_user.briefs.find(params[:id])
    brief.update_attributes!(brief_params)
    render json: brief
  end

  def destroy
    brief = current_user.briefs.find(params[:id])
    if brief.destroy
        head :ok
    else
        head 400
    end
  end

  private

  def brief_params
    params.require(:brief).permit(:text, :date)
  end
end