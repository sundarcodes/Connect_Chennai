class HomeController < ApplicationController
  def land
  end
  def help
    @help_request=HelpRequest.new
  end
  def show
  end
  def saveHelp
    help_request=HelpRequest.new(request_params)
    help_request.save
    if help_request.save
      flash[:notice] = "Details Posted.."
      redirect_to root_path
    else
      flash[:alert] = "Details cannot be posted : #{help_request.errors.full_messages.join(', ')}"
      redirect_to home_help_path
    end
  end
private
  def request_params
    params.require(:help_request).permit(:name, :apt, :street,:locality,:pincode,:city,:phone,:need_of_hour)
  end
end
