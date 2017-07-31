class ContactsController < ApplicationController
  skip_before_action :authorize, raise: false

  def new
    @message = ContactMessage.new
  end

  def create

  end
end
