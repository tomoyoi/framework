class Api::V1::ContactsController < ApiController
  def show
    contacts = Contact.find(id)
  end

  def create
    Contact.create(contact_params)
  end

private
  def contact_params
    params.require(:contact).permit(
      :name,
      :tel,
      :email,
      :message
    )
  end
end
