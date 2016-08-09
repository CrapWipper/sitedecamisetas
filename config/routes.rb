Rails.application.routes.draw do
	resources :departamentos
	resources :produtos, only: [:new,:destroy,:create,:edit,:update]
	get "produtos/busca" => "produtos#busca", as: :busca_produto
	root "produtos#index"
end
