require('sinatra')
require('sinatra/reloader')
require('./lib/contact')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @all_contacts = Contact.all
  erb(:index)
end

get('contacts/new') do
  erb(:new_contact)
end
#
# post('/contacts/new') do
#   firstname = params.fetch(:firstname)
#   lastname = params.fetch(:lastname)
#   phone_number = params.fetch(:phone_number)
#   job_title = params.fetch(:job_title)
#   email = params.fetch(:email)
#   company = params.fetch(:company)
#   new_contact = Contact.new(firstname => :firstname, lastname => :lastname, phone_number => :phone_number, job_title => :job_title, email => :email, company => :company)
#   new_contact.create
#   erb(:success)
# end
