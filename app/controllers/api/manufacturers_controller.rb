class Api::ManufacturersController < ApplicationController
  def index
    render json: Manufacturer.where.not(id: nil)
  end
end
