class MessagesController < ApplicationController
    before_action :get_last
    def index
        new
    end
    def new
        @message = Message.new
        respond_to do |format|
            format.html
            format.js
        end           
    end
    def list
    end    
    def create
        @message = Message.new(message_params)
        @message.text.strip!
        if @message.save
            respond_to do |format|
                format.html do
                    redirect_to :messages
                end
                format.js do 
                    @notice = t('.added_successfully')
                    get_last
                end
            end
        else
            respond_to do |format|
                format.html do
                    render 'index'
                end
                format.js
            end
        end
    end
    private
        def message_params
            params.require(:message).permit(:text)
        end
        def get_last
             @messages = Message.limit(10).order('created_at DESC')  
        end
end