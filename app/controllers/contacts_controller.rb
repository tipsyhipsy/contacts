class ContactsController < ApplicationController
  def index
    @contact = Contact.new
    # render 'new'
  end

  def new
    # @contact = Contact.new
  end

  def create
    @contact =Contact.new(contact_params)
    if @contact.save
    redirect_to contacts_path, notice:"送信しました"
    else
    render 'new'
    end
  end

  # def show
  #   @contact =Contact.new
  # end

  private

  def contact_params
    params.require(:contact). permit(:title, :mail, :content)
  end
end
