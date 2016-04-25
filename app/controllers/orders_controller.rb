class OrdersController < ApplicationController
    
    
    def new
        @item = Order.new
    end
    #CREATE
    def create
        @item=Order.new
        @item.name=params["name"]
        @item.phone=params["phone"]
        @item.email=params["email"]
        @item.order_detail=params["order_detail"]
        @item.pickup_time=params["pickup_time"]
        
        
        @item.save
            render "new"
    end
    #READ
    
    def show
        @order = Order.find_by(:id => params[:id])
        @order_item = Orderitem.new
        if @order.present?
            render "show"
        else
            redirect_to orders_url, :notice => "The record doesn't exist"
        end
    end
    
    def index
        @item = Order.all
        render "index"
    end
    def edit
       @item=Order.find(params[:id])
       render "edit"
    end
    def update
       @item=Order.find(params[:id])
       @item.name = params["name"]
       @item.phone = params["phone"]
       @item.email = params["email"]
       @item.order_detail = params["order_detail"]
       @item.pickup_time = params["pickup_time"]
       
       @item.save
       redirect_to orders_url
       render "new"
    end
    
    def destroy
        @item = Order.find(params[:id])
        @item.destroy
        redirect_to "/orders", :notice => "Order item deleted"
    end
end