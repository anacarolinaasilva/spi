Rails.application.routes.draw do

  resources :leads


  # ROOT ROUTE
  root 'welcome#home'

  ######################################
  ######### Resourceful Routes #########
  ######################################
  #  leads_path
  #  lead_path(:id)
  #  new_subject_path
  #  leads_path
  #  edit_lead_path(:id)
  #  lead_path(:id)
  #  delete_lead_path(:id)
  #  lead_path(:id)
  # lead_params ?



  get 'demo/index'
  get 'welcome/other_hello'


  # SIMPLE MATCH ROUTE
  # match "demo/index", to: => "demo#index", via => :get


  #DEFAULT ROUTE
  # Dafault router may go away in future versions os Rails
  # get ':controller(/:action(/:id))'
  # match ':controller(/:action(/:id))', via => :get


  # EXAMPLE
  # GET /students/edit/52
  # StudentsController, edit actionm id = 52

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
  get 'welcome/home',       to: 'welcome#home'
  get 'welcome/about',      to: 'welcome#about'
  get 'welcome/contact-us', to: 'welcome#contact-us'
end
