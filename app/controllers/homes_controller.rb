class HomesController < ApplicationController
    def homepage
        render "homepage"
    end
    def aboutpage
       render "aboutpage" 
    end
    def contactpage
        render "contactpage"
    end
end