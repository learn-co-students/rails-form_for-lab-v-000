module LocateRecord

  private
  def self.find_by_id(params)
    params[:controller].classify.constantize.find_by(params[:id])
  end

end
