Rails.application.routes.draw do
  get 'video_card_products', to: 'video_card_products#index'
  namespace :api do
    get 'video_cards', to: 'video_cards#index'
    get 'manufacturers', to: 'manufacturers#index'
  end
end
