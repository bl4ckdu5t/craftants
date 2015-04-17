Rails.application.routes.draw do
  get 'search' => 'welcome#search', as: :search
  get 'artisan/:id' => 'accounts#profile', as: :artisan_profile
  get 'dashboard' => 'accounts#dashboard', as: :dashboard
  get 'how-it-works' => 'welcome#story', as: :story
  devise_for :users

  root 'welcome#index'
end
