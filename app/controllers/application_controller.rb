class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here


#all recipes
  get "/" do
    recipes = Recipe.all  
    recipes.to_json()
  end
#one recipe
 get "/recipes/:pk" do 
    recipe = Recipe.find_by(id: params[:pk])
    recipe.to_json()
  end
#POST a recipe
post "/recipes/" do
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
  end
#UPDATE a recipe
  patch "/recipes/update/:id" do 
    recipe = Recipe.find_by(id: params[:id])

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
  delete "/recipes/:id" do 
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy
    {
      "message":"Successfully Deleted Recipe #{params[:id]}",
      "Status":"HTTP_Status_OK"
    }.to_json()
  end
