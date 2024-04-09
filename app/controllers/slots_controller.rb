class SlotsController < ApplicationController
    def index
        @value = (0...3).map { rand(10) }.join
        respond_to do |format|
            format.json do
                if @value == "777"
                    current_user.balance += 100
                    current_user.save
                else
                    current_user.balance -= 50
                    current_user.save
                end
            end

            format.html do 
                if @value == "777"
                    current_user.balance += 100
                    current_user.save
                else
                    current_user.balance -= 50
                    current_user.save
                end            end
        end
    end
    def update_roulettes
        @value = (0...8).map { (65 + rand(26)).chr }.join
        respond_to do |format|
            format.js

            format.html
        end
    end
end
