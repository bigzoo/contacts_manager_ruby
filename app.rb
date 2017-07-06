require('sinatra')
require('sinatra/reloader')
require('./lib/contact')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @all_contacts = Contact.all
  binding.pry
  erb(:index)
end
