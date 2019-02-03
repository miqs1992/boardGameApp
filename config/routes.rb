# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  root to: 'pages#root'
  namespace :api, constraints: { format: 'json' }, defaults: { format: 'json' } do
    resources :me, only: :index
  end
  get '*path', to: 'pages#root', constraints: ->(req) { req.format.html? }
end
