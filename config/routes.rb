Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  resource :session, only: %i[new create destroy]
  resource :chat, only: %i[show destroy]

  root 'chats#show'
end
