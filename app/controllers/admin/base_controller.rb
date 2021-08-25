class Admin::BaseController < ApplicationController
  before_action :require_admin

  def require_admin
    render file: 'public/404.html', status: 404, layout: false unless current_admin?
  end

  def nothing
    render file: 'this_doesnt_do_anything'
  end
end
