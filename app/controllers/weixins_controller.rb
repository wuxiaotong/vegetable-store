class WeixinsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def new
  end

  def create
  	 if params[:xml][:MsgType] == "text"
      render "echo", :formats => :xml
    end
  end

  def show
  	render :text => params[:echostr]
  end
  before_filter :check_weixin_legality

  private
  def check_weixin_legality
    array = [Rails.configuration.weixin_token, params[:timestamp], params[:nonce]].sort
    render :text => "Forbidden", :status => 403 if params[:signature] != Digest::SHA1.hexdigest(array.join)
  end
end
