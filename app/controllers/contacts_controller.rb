class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact =Contact.new(contact_params)
    if @contact.save
    redirect_to '/contacts/new', notice: "送信しました!"
    else
    render 'new'
    end
  end

  private

  def contact_params
    params.require(:contact). permit(:title, :mail, :content)
  end
end
