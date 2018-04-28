Given("I visit the application") do
  visit root_path
end

Given("there is a dish called {string}") do |string|
  @products = Product.create(name:string, desc: 'Whatever', price:100)
end
