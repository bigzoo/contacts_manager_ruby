require('rspec')
require('contact')

describe(Contact) do
  describe("#all") do
    it("contacts are empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#create") do
    it("creates a new contact") do
      my_contact = Contact.new({:firstname=>"Chris",:lastname=> "Nyaga",:phone_number=> "0700000000",:email=> "chris@gmail.com",:job_title=> "Developer", :company=>"Company"})
      my_contact.create
      expect(Contact.all()).to(eq([my_contact]))
    end
  end
end
