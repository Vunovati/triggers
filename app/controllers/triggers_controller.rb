class TriggersController < ApplicationController
  respond_to :html, :xml
 def create
  @setting = Setting.find(params[:setting_id])
  @trigger = @setting.triggers.create(params[:trigger])
  redirect_to setting_path(@setting), :notice => "Successfully created trigger!"
 end 

 def destroy
   @setting = Setting.find(params[:setting_id])
   @trigger = @setting.triggers.find(params[:id])
   @trigger.destroy
   redirect_to setting_path(@setting)
 end

 def edit
   @setting = Setting.find(params[:setting_id])
   @trigger = @setting.triggers.find(params[:id])
   respond_with(@trigger)
 end
end
