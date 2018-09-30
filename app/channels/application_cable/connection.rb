module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = authorize_user
    end

    private

    def authorize_user
      user = env['warden'].user
      user || reject_unauthorized_connection
    end
  end
end
