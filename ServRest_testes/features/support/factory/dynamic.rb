require 'faker'

module Factory
    class Dynamic
        def self.user_for_registering
            {
                nome: Faker::Name.name,           
                email: Faker::Internet.safe_email,
                senha: Faker::Internet.password,
                produto: Faker::Lorem.word,
                descricao: Faker::Lorem.sentence,
                preco: Faker::Commerce.price(range: 1..10),
                quantidade: Faker::Bank.account_number(digits: 4),
                preco_decimal: Faker::Commerce.price
            }
        end
    end
end