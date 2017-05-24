class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = t('email_message_success')
    else
      flash.now[:error] = t('email_message_error')
      render :new
    end
  end
end