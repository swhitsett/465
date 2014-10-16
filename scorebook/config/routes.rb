Rails.application.routes.draw do
   get 'high_scores/:id', to: 'high_scores#show', as: 'high_score'
   get 'high_scores', to: 'high_scores#index', as: 'high_scores'

   root 'high_scores#index'
end
