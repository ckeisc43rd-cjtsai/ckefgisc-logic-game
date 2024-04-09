class SlotsController < ApplicationController
    def index
        @value = (0...8).map { (65 + rand(26)).chr }.join
    end
    def update_roulettes
        @value = (0...8).map { (65 + rand(26)).chr }.join
        respond_to do |format|
            format.js

            format.html
        end
    end
end
