Rails.application.routes.draw do

  namespace :api do
    resources :quizzes, only: [:show]
  end

end
