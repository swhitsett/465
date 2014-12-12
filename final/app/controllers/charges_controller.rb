class ChargesController < ApplicationController
  before_action :set_Charge, only: [:show, :edit, :update, :destroy]
    def new
      @access = Access.new
    end

    def create
      @access = Access.new
      # Amount in cents
      @amount = 16500

      customer = Stripe::Customer.create(
        :email => 'kongzero32@gmail.com',
        :card  => params[:stripeToken]
      )

      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
      )
      
      @access.user_id = current_user.id
      @access.save
      redirect_to :back, notice: 'Transiction was a sucuess'

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charges_path
    end
end
