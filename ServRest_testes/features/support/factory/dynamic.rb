require 'faker'

module Factory
    class Dynamic
        def self.user_for_registering
            {
                name: Faker::Name.name,           
                email: Faker::Internet.safe_email,
                password: Faker::Internet.password,
                product: Faker::Lorem.word,
                description: Faker::Lorem.sentence,
                price: Faker::Commerce.price(range: 1..10),
                quantity: Faker::Bank.account_number(digits: 4),
                price_decimal: Faker::Commerce.price
            }
        end
    end
end