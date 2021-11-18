Rails.application.routes.draw do
  get 'types/index'
  get 'types/form'
  get 'types/create'
  get 'types/update'
  get 'types/destroy'
  get 'quantities/index'
  get 'quantities/form'
  get 'quantities/create'
  get 'quantities/update'
  get 'quantities/destroy'
  get 'stuffs/index'
  get 'stuffs/form'
  get 'stuffs/create'
  get 'stuffs/edit'
  get 'stuffs/update'
  get 'stuffs/destroy'
  get 'brands/index'
  get 'brands/form'
  get 'brands/create'
  get 'brands/edit'
  get 'brands/update'
  get 'brands/destroy'
  get 'employees/index'
  get 'employees/form'
  get 'employees/create'
  get 'employees/edit'
  get 'employees/update'
  get 'employees/destroy'

  root to: "employees#index"


  get "/employees/form" => "employees#form"

  post 'employees/create' => 'employees#create'

  get "/employees/:sadsad/edit" => "employees#edit"

  post '/employees/:sadsad/update' => "employees#update" 

  get '/employees/:sadsad/destroy' => "employees#destroy"


  get "/brands/form" => "brands#form"

  post 'brands/create' => 'brands#create'

  get "/brands/:sadsad/edit" => "brands#edit"

  post '/brands/:sadsad/update' => "brands#update"

  get '/brands/:sadsad/destroy' => "brands#destroy"



  get "/quantities/form" => "quantities#form"

  post 'quantities/create' => 'quantities#create'

  get "/quantities/:sadsad/edit" => "quantities#edit"

  post '/quantities/:sadsad/update' => "quantities#update"

  get '/quantities/:sadsad/destroy' => "quantities#destroy"



  get "/types/form" => "types#form"

  post 'types/create' => 'types#create'

  get "/types/:sadsad/edit" => "types#edit"

  post '/types/:sadsad/update' => "types#update"

  get '/types/:sadsad/destroy' => "types#destroy"






  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
