class SlotsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:update_roulettes]

    #$value = "xxx"
    def index
       @value = "XXX"
       @user=current_user
    end
    
    def update_roulettes
        puts current_user.balance
        @value = (0...3).map { rand(10) }.join
        if @value == "777"
            current_user.balance += 100
            current_user.save
        else
            current_user.balance -= 50
            current_user.save
        end
        render json: {value: @value, balance: current_user.balance}
    end
end
