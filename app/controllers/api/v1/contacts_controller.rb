class Api::V1::ContactsController < ApplicationController
    
    skip_before_action :authenticated
    before_action :current_user, only: [:show, :edit, :update, :destroy]
    before_action :kind, only: [:new, :edit, :update, :destroy]
    
    def index
      @contacts = Contact.all
      
      render json: @contacts, status: 200
  end

    def show
        @contact = current_user.contacts
        
        render json: @contact, status: 200
    end
    
    def new
        # @user = User.find(session[:user_id])
        # @contact = Contact.new
        # render json: @user, status: 200
        # render json: @contact, status: 200
    end
    
    
    def create
        # @contact = Contact.create(contacts_params)
        # @user = User.find(session[:user_id])
        # redirect_to @user
        # render json: @contact, status: 200
        # render json: @user, status: 200
    end
    
      def edit
        @contact = Contact.find(params[:id])

        render json: @contact, status: 200
      end
    
      def update
        @contact = Contact.find(params[:id])
        @contact.update(contacts_params)
        redirect_to @user
        
        render json: @contact, status: 200
      end
    
      def destroy
        @contact = Contact.find(params[:id])
        @contact.destroy
        redirect_to @user
        
        render json: @contact, status: 200
      end

      def kind
        @kind = ["Phone", "Email", "Website", "Linkedin", "Facebook", "Instagram", "Twitter"]
        
        render json: @kind, status: 200
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
