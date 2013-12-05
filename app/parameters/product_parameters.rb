class ProductParameters < ActionParameter::Base

  def permit
    params.require(:product).permit(:name, :price, :hidden)
  end
end