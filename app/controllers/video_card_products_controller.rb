class VideoCardProductsController < ApplicationController
  def index
    @manufacturers = Manufacturer.all
    products = VideoCardProduct.order(:id).page(params[:page]).per(10)

    @min_price = request.params[:min_price]
    unless @min_price.blank?
      products.where!("min_price > ?", @min_price)
    end

    @max_price = request.params[:max_price]
    unless @max_price.blank?
      products.where!("max_price < ?", @max_price)
    end

    @manufacturers_params = request.params[:manufacturers]
    unless @manufacturers_params.blank?
      products.joins!(:video_card).where!(:video_card => { :manufacturer_id => @manufacturers_params })
    end

    @search = request.params[:search]
    unless @search.blank?
      products.where!("title like ?", "%#{@search}%")
    end

    @products = products
  end
end
