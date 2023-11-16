def generate_user_id
    user_id = ''
    n = rand(5..10)
    n.times do
        user_id += [*'a'..'z', *'0'..'9'].sample
    end
    user_id
end

user_id = generate_user_id
user = User.new(user_id: user_id, password: 'password')
user.save
p user
