Rails.application.routes.draw do
  # GET /students/index => index in students_controller.rb
  # get 'students' ,to: 'students#index'
  # # URL path            contoller action
  # get 'students/:id' ,to: 'students#show', id: /\d+/

  # RESTFUL routes
  resources :students, only: [:index, :show]
  # index    GET /students
  # show     GET /students/:id
  # new      GET /student/new
  # create   POST /students
  # edit     GET /students/:id/edit
  # update   PATCH /students/:id
  # delete   DELETE /students/:id

  root to: 'students#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
