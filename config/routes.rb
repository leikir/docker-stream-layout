Rails.application.routes.draw do

  resources :match_layouts do
    member do
      get :content
    end
  end

end
