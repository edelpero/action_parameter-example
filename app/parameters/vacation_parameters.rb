class VacationParameters < ActionParameter::Base
  def permit
    params.require(:vacation).permit(:destination, :price, :hidden)
  end

end