class Console::ApplicationController < ::ApplicationController
  before_action :authenticate_console_admin!
end
