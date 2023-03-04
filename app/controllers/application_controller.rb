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
  end
#UPDATE a recipe
  

  #create user instance
  #  user = User.create(
  #   name: params[:name],
  #  )
  #  user.save
  #  {
  #     "Message": "User created successfully",
  #     "Status": "HTTP_201_created",
  #  }.to_json
  # end