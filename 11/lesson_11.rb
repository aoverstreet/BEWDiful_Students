rake routes

get 'shirts' => 'shirts#index'


#new
get 'shirts/new' => 'shirts#new'


#edit
get 'shirts/:id/edit' => 'shirts#edit'

#create
post  'shirts' => 'shirts#create'

#update
put 'shirts/:id/' => 'shirts#update'

#destroy
delete 'shirts/:id/' => 'shirts#destory'


