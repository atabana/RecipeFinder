class Recipe
  include HTTParty

  base_uri "http://food2fork.com/api"
  default_params key: 'c81c936c62d87b9a977fd36c581ed109'
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end