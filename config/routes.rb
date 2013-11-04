GithubSocialAuth::Application.routes.draw do
  get "users/show"
  get "pages/home"
  match '/auth/:provider/callback' => 'authentications#create'
  match '/auth/failure' => 'sessions#failure'
  match 'sign_out' => 'sessions#destroy'
  root :to => "pages#home"
end
