class ContactsController < ApplicationController

    before_action :current_user, only: [:show, :edit, :update, :destroy]
    before_action :kind, only: [:new, :edit, :update, :destroy]
    
    def index
        @contacts = current_user.contacts    
    end

    def show
        @contacts = current_user.contacts
    end
    
    def new
        @user = User.find(session[:user_id])
        @contact = Contact.new
    end
    
    
    def create
        @contact = Contact.create(contacts_params)
        @user = User.find(session[:user_id])
        redirect_to @user
    end
    
      def edit
        @contact = Contact.find(params[:id])
      end
    
      def update
        @contact = Contact.find(params[:id])
        @contact.update(contacts_params)
        redirect_to @user
      end
    
      def destroy
        @contact = Contact.find(params[:id])
        @contact.destroy
        redirect_to @user
      end

      def kind
        @kind = ["Phone", "Email", "Website", "Linkedin", "Facebook", "Instagram", "Twitter"]
      end
    
    private
    
      def current_user
        @user = User.find(session[:user_id])
      end

      def current_contact
        @contact = Contact.find(params[:user_id])
      end
      
    
      def contacts_params
        params.require(:contact).permit(:kind, :value, :user_id)
      end

    end
