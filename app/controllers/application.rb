# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  # AuthenticatedSystem must be included for RoleRequirement, and is provided by installing acts_as_authenticates and running 'script/generate authenticated account user'.
  include AuthenticatedSystem
  # You can move this into a different controller, if you wish.  This module gives you the require_role helpers, and others.
  include RoleRequirementSystem


  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'b20cf98a80635e04e756836cf78e51d6'

  layout "main"

   ActiveScaffold.set_defaults do |config|
    config.ignore_columns.add [:created_at,:updated_at]
    #config.theme=:blue
    #config.theme=:default
  end

end
