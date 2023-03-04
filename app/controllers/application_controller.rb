class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here


#all recipes
  get "/recipe" do
    recipe = Recipe.all  
    recipe.to_json()
  end
#one recipe
 get "/recipe/:id" do 
    recipe = Recipe.find(params[:id])
    recipe.to_json()
  end
#POST a recipe
post "/recipe/" do
    recipe = Recipe.create(
      variety: params[:variety],
      name: params[:name],
      image: params[:image],
      ingredients: params[:ingredients],
     instructions: params[:instructions]
    )
    recipe.save()

    {
      "Message": "Created successfully",
      "Status": "HTTP_200_OK"
    }.to_json()
  end
  
  
#UPDATE a recipe
  patch "/recipe/:id" do 
    recipe = Recipe.find(params[:id])

recipe.update(
      variety: params[:variety],
      name: params[:name],
      image: params[:image],
      ingredients: params[:ingredients],
     instructions: params[:instructions]
    )
    
    recipe.to_json()
  end


#DELETE a recipe
  delete "/recipe/:id" do 
    recipe = Recipe.find(params[:id])
    recipe.destroy
   
    recipe.to_json()
   end
   # Save User
   post "/user/:id" do
  existing_user = User.find(params[:id])
  # check if user exists
  if existing_user
    return {"error":"User Already Existing"}.to_json
  end
end
   #create user instance
   post "/users/create" do
   user = User.create(
    name: params[:name],
  
  )
  user.to_json
  
end
# get users
get "/users" do
  user = User.all
  user.to_json
end
 #get one user
get "/users/:id" do
  user = User.find(params[:id])
  user.to_json
end
  end

  

  