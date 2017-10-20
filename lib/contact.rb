class Contact
  @@all_contacts = []
  attr_reader(:firstname, :lastname, :phone_number, :email, :job_title, :company)

  define_method(:initialize) do |attributes|
    @firstname = attributes.fetch(:firstname)
    @lastname = attributes.fetch(:lastname)
    @phone_number = attributes.fetch(:phone_number)
    @email = attributes.fetch(:email)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
  end

  define_singleton_method(:all) do
    @@all_contacts
  end

  define_method(:create) do
    @@all_contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@all_contacts = []
  end
end
