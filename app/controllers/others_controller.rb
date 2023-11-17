include ActionController::HttpAuthentication::Digest::ControllerMethods

class OthersController < ApplicationController
    before_action :digest_auth, only: :test_digest_auth

    def time
        response.set_header("Refresh", "1") #ページを1秒ごとに更新する
        render plain: Time.now
    end

    def log
        logger.unknown "Unknown"
        logger.fatal "Fatal"
        logger.error "Error"
        logger.warn "Warn"
        logger.info "Info"
        logger.debug "Debug"
        render plain: "Check the log for output"
    end

    def test_digest_auth
        hashed_str = Digest::MD5.hexdigest(["panda", "Application", "xyz"].join(":"))
        render json: {message: "Authorized!", hashed_str: hashed_str, authorication: request.authorization}
    end

    private

    def digest_auth
        authenticate_or_request_with_http_digest("Application") do |username|
            User.find_by(user_id: username)&.password
        end
    end
end
