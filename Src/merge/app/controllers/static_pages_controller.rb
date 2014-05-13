class StaticPagesController < ApplicationController
  include SessionsHelper
  before_filter :go_to_home, :only => :home
  
  def go_to_home
    redirect_to self.current_user unless self.current_user.blank?
  end

  
  def home
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
