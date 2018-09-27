Rails.application.routes.draw do
  # GET /students/index => index in students_controller.rb
  get 'students' , to: 'students#index'
  # URL path            contoller action

  root to: 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
