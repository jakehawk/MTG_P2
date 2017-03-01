Rails.application.routes.draw do
	root 'decks#index'

	resources :users do
		resources :decks
	end

	resources :decks do
		resources :cards
	end

	delete '/logout' => 'sessions#destroy', as: :logout
	resources :sessions, only: [:new, :create]
end
