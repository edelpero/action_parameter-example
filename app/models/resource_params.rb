class ResourceParams < Struct.new(:params)
  def toy
    params.require(:toy).permit(:name, :price, :hidden)
  end
end