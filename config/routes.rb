Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  resource :session, only: %i[new create destroy]
  get 'chat', action: :index, controller: 'chat'

  root 'chat#index'
end
