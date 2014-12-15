class ChargesController < ApplicationController
  before_action :set_Charge, only: [:show, :edit, :update, :destroy]
    def new
      @access = Access.new
    end

    def create
      @access = Access.new
      # Amount in cents
      @amount = params[:cost]  #<%= @event.cost %>

      customer = Stripe::Customer.create(
        :email => current_user.email, #<%= current_user.email %>
        :card  => params[:stripeToken]
      )

      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
      )

      @access.user_id = current_user.id
      @access.event_id = params[:eventID]
      @access.registered = 1
      @access.save
      redirect_to :back, notice: 'Transiction was a sucuess  
                                  An email will be sent shortly'

    end
end
