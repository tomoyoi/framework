class Api::V1::ContactsController < ApiController
  def index
    contacts = Contact.all
  end

  def show
    contact = Contact.find(id)
  end
end
