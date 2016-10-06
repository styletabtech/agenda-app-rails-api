# Inherit from this class to allow unauthenticate access to read actions

# this should be inherited if you want a user to be able to see something, but
# but not edit or delete it

class OpenReadController < ProtectedController
  READ_ACTIONS = [:index, :show].freeze
  skip_before_action :authenticate, only: READ_ACTIONS
  before_action :set_current_user, only: READ_ACTIONS
end
