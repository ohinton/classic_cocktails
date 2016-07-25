require("bundler/setup")

Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file}


get ("/") do
  erb(:index)
end

get ("/ingredients") do
  erb(:ingredients)
end

get ("/ingredients/results") do
  @ingredient = Ingredient.find(params.fetch('id').to_i())
  erb(:results)
end
