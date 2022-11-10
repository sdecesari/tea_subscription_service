class Api::V1::SubscriptionsController < ApplicationController
  def create
    subscription = Subscription.new(sub_params)
    if subscription.save
      render json: SubscriptionSerializer.new(subscription), status: 201
    else
      render json: { error: subscription.errors.full_messages.to_sentence }, status: 400
    end
  end

  def update
    subscription = Subscription.find(params[:subscription_id])
    if params[:status] == "inactive"
      subscription.update_attribute(:status, 'inactive')
      render json: SubscriptionSerializer.new(subscription), status: 200
    elsif params[:status] == "active"
      subscription.update(sub_params)
      render json: SubscriptionSerializer.new(subscription), status: 200
    else
      render json: { error: subscription.errors.full_messages.to_sentence }, status: 400
    end
  end

  def index 
    customer = Customer.find(params[:customer_id])
    if customer.subscriptions.empty? == false
      render json: CustomerSerializer.new(customer)
    else
      render json: { error: subscription.errors.full_messages.to_sentence }, status: 400
    end
  end

  private
  def sub_params
    params.permit(:title, :price, :status, :frequency, :tea_id, :customer_id)
  end 
end