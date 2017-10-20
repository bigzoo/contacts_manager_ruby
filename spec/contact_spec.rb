require('rspec')
require('contact')
require('pry')

describe(Contact) do
  before do
    Contact.clear
  end

  describe('.all') do
    it('contacts are empty at first') do
      expect(Contact.all).to(eq([]))
    end
  end

  describe('#create') do
    it('creates a new contact') do
      my_contact = Contact.new(firstname: 'Chris', lastname: 'Nyaga', phone_number: '0700000000', email: 'chris@gmail.com', job_title: 'Developer', company: 'Company')
      my_contact.create
      expect(Contact.all).to(eq([my_contact]))
    end
  end

  describe('#create multiple contacts') do
    it('creates a new contact') do
      my_contact1 = Contact.new(firstname: '1Chris', lastname: 'Nyaga', phone_number: '0700000000', email: 'chris@gmail.com', job_title: 'Developer', company: 'Company')
      my_contact2 = Contact.new(firstname: '2Chris', lastname: 'Nyaga', phone_number: '0700000000', email: 'chris@gmail.com', job_title: 'Developer', company: 'Company')
      my_contact1.create
      my_contact2.create
      expect(Contact.all).to(eq([my_contact1, my_contact2]))
    end
  end

  describe('#can access data in multiple contacts') do
    it('creates a new contact') do
      my_contact1 = Contact.new(firstname: '1Chris', lastname: 'Nyaga', phone_number: '0700000000', email: 'chris@gmail.com', job_title: 'Developer', company: 'Company')
      my_contact2 = Contact.new(firstname: '2Chris', lastname: 'Nyaga', phone_number: '0700000000', email: 'chris@gmail.com', job_title: 'Developer', company: 'Company')
      my_contact1.create
      my_contact2.create
      contacts = Contact.all
      expect(contacts[0].firstname).to(eq('1Chris'))
    end
  end
end
