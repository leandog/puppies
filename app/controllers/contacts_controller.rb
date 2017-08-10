class ContactsController < ApplicationController
  skip_before_action :authorize, raise: false

  def new
    @message = ContactMessage.new
  end

  def create
    @message = ContactMessage.new(contact_message_params)


  end


  private

  def contact_message_params
    params.require(:contact_message).permit(:name, :email, :body)
  end
end
