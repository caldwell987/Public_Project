class Api::V1::ContactsController < ApplicationController
    
    # skip_before_action :authenticated
    # before_action :current_user, only: [:show, :edit, :update, :destroy]
    # before_action :kind, only: [:new, :edit, :update, :destroy]

    def index
      contacts = Contact.all  
      render json: contacts, status: 200
    end


    def edit
      @contact = Contact.find(params[:id])
    end

  
    def update
      @contact = Contact.find(params[:id])
      @contact.update(contact_params)
      
      render json: @contact, status: 200
    end

    def destroy
      @contact = Contact.find(params[:id])
      unless @contact.nil?
        @contact.destroy
        render json: @contact
      else
        render json: { error: "Contact not Found!" }, status: 404
      end
    end
    
    def create
      @contact = Contact.create(contact_params)

      render json: @contact, status: 201

    end
      

  def contact_params
    params.require(:contact).permit(:kind, :value, :user_id)
  end

end







# def create
  #   unless contact_params[:user_id].nil?
  #     default = {}

  #     if User.find(contact_params[:user_id]).contacts.count < 10
  #       if contact_params[:kind].nil?
  #         default[:kind] = "phone"
  #       end

  #       if contact_params[:value].nil?
  #         default[:value] = "000-000-0000"
  #       end

  #       @contact = Contact.create(contact_params.merge(default))

  #       render json: @contact, status: 201

  #     else
  #       render json: { error: "Party is Full!"}, status: 403
  #     end
  #   else
  #     render json: { error: "User not found"}, status: 404
  #   end
  # end