class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def login_required
    respond_to do |format|
      format.js do
        if warden.authenticate(:scope => :user).nil?
          return render(:json => {
            :message => t("global.please_login"),
            :success => false,
            :status => :unauthenticate
          }.to_json)
        end
      end
      format.any { warden.authenticate!(:scope => :user) }
    end
  end
end
