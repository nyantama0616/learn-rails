namespace :add_user do
    desc "新規Userを作成する"
    task :random => :environment do
        user = AddUser.new_random_user
        user.save
        p user
    end
end

# OPTIMIZE: メソッドの分け方はこれでいいのかは不明
module AddUser
    def self.generate_random_string
        user_id = ''
        n = rand(5..10)
        n.times do
            user_id += [*'a'..'z', *'0'..'9'].sample
        end
        user_id
    end

    def self.new_random_user
        user_id = generate_random_string
        password = generate_random_string
        User.new(user_id: user_id, password: password)
    end
end
