class MenusController < ApplicationController
    #Create
    
    def new
        #unless current_user.present?
         #   redirect_to menus_url
        #end
        @item = Menu.new
    end
    
    def create
        @item = Menu.new
        @item.name=params["name"]
        @item.photo=params["photo"]
        @item.description=params["description"]
        @item.price=params["price"]
        if @item.save
            redirect_to "/menus", :notice => "Menu item created successfully"
        else
            render "new"
        end
       
    end
    
    #Read
    def show
        @item = Menu.find_by(:id => params[:id])
        render "show"
    end
    
    def index
        @item = Menu.all
        render "index"
    
    end
    
    #Update
  
    def edit
        @item = Menu.find(params[:id]) 
        render "edit"
    end
    
    def update
        @item = Menu.find(params[:id])
        @item.name = params["name"]
        @item.photo = params["photo"]
        @item.description = params["description"]
        @item.price = params["price"]
        @item.save
        redirect_to menu_url(@item.id)
    end
    def destroy
       @item = Menu.find(params[:id])
       @item.destroy
       redirect_to "/menus", :notice => "Menu item deleted"
    end
end