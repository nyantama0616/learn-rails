class OthersController < ApplicationController
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
end
