Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  get 'chat', action: :index, controller: 'chat'

  root 'chat#index'
end
