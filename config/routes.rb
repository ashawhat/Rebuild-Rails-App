LearnToProgram::Application.routes.draw do
  match('lessons', { :via => :get, :to => 'lesson#index'})
   match('lessons', { :via => :get, :to => 'lesson#new'})
   match('lessons', { :via => :post, :to => 'lesson#create'})
   match('lessons/:id', { :via => :get, :to => 'lesson#show'})
   match('lessons/:id', { :via => :delete, :to => 'lesson#destroy'})
end
