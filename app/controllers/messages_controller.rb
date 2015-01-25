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
      @users = [
        {
          name: 'Fernando',
          email: 'fvilla18@gmail.com'
        },
        {
          name: 'Ariana',
          email: 'agmartin7@yahoo.com'
        }
      ]

      UserNotifier.send_notification(@users).deliver
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
