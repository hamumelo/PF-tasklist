class Public::EventsController < ApplicationController
  def index
    @events = Event.all
     @users = User.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = 'タスクが投稿されました'
      redirect_to events_path
    else
      flash[:danger] = 'タスクが投稿されません'
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

   if @event.update(event_params)
    flash[:success] = 'タスクが編集されました'
    redirect_to @event
   else
    flash.now[:danger] = 'タスクが編集されませんでした'
    render :edit
   end
  end

  def destroy
   @event = Event.find(params[:id])
   @event.destroy

   flash[:success] = 'タスクが削除されました'
   redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :content, :start_time)
  end

end
