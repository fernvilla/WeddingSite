class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      @users = ['fvilla18@gmail.com', 'agmartin7@yahoo.com']
      
      @users.each do |user|
        UserNotifier.send_notification(user).deliver
      end

      redirect_to messages_path
    else
      render 'new'
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    redirect_to messages_path    
  end

  private
    def message_params
      params.require(:message).permit(:message, :name)
    end
end
