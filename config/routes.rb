Rails.application.routes.draw do
  devise_for :users
  root to: "summaries#index"

  resources :users do
    resources :summaries
  end

  resources :summaries do
    resources :foods, :only => [:create, :new]
  end

  resources :summaries do
    resources :exercises, :only => [:create, :new]
  end
end
