class Api::V1::BriefsController < ApplicationController
  # GET /briefs
  # GET /briefs.json
  def index
    briefs = Brief.all

    render json: briefs
  end

  # GET /briefs/1
  # GET /briefs/1.json
  def show
    briefs = Brief.find(params[:id])

    render json: briefs
  end
end