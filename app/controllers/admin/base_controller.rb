class Admin::BaseController < ApplicationController
  layout "admin"

  # AuthenticatedSystem must be included for RoleRequirement, and is provided by installing acts_as_authenticates and running 'script/generate authenticated account user'.
  #include AuthenticatedSystem
  # You can move this into a different controller, if you wish.  This module gives you the require_role helpers, and others.
  #include RoleRequirementSystem
 # require_role "admin"

end
