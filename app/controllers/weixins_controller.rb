class WeixinsController < ApplicationController
  skip_before_filter :authorize
  skip_before_filter :verify_authenticity_token
  before_filter :check_weixin_legality

  def show
    render :text => params[:echostr]
  end

  def create
  	 if params[:xml][:MsgType] == "text"
      render "echo", :formats => :xml
    end
  end

 # request = Nestful.post menu_api_url, :params => menu_json_str
 # def menu_json_str
 #    s = {:button => [
 #      {:type => "click", :name => "Menu1", :key => "dfafd"},
 #    ]}.as_json
 # end
  private
  def check_weixin_legality
    array = [Rails.configuration.weixin_token, params[:timestamp], params[:nonce]].sort
    render :text => "Forbidden", :status => 403 if params[:signature] != Digest::SHA1.hexdigest(array.join)
  end
end
