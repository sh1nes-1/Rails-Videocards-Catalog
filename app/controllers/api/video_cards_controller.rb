class Api::VideoCardsController < ApplicationController
  def index
    render json: VideoCard.where.not(id: nil)
  end
end
