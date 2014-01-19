class ProductParameters < ActionParameter::Base

  def permit
    if current_user.admin?
      params.require(:product).permit(:name, :price, :hidden)
    else
      params.require(:product).permit(:name, :price)
    end
  end
end