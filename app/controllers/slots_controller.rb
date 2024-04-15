class SlotsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:update_roulettes]

    #$value = "xxx"
    def index
       @value = "XXX"
       @user=current_user
       @slot_bet = @user.slot_bet
    end
    
    def update_roulettes
        number_input = params[:number_input].to_i
        @user=current_user
        if number_input!=0
          @user.slot_bet=number_input
        end
        @user.save
        @slot_bet=@user.slot_bet
        @value = (0...3).map { rand(10) }.join
        if @value == "777"
            current_user.balance += @slot_bet*2
            current_user.save
        else
            current_user.balance -= @slot_bet
            current_user.save
        end
        render json: {value: @value, balance: current_user.balance, slot_bet:@slot_bet}
    end
end
