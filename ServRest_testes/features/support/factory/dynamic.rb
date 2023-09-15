require 'faker'

module Factory
    class Dynamic
        def self.user_for_registering
            {
                nome: Faker::Name.name,
                email: Faker::Internet.safe_email,
                senha: Faker::Internet.password
            }
        end
    end
end