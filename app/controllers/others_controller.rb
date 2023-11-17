class OthersController < ApplicationController
    def time
        response.set_header("Refresh", "1") #ページを1秒ごとに更新する
        render plain: Time.now
    end
end
