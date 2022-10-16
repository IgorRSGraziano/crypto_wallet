# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

%x(rails db:migrate)

coins = [{ description: 'Bitcoin', acronym: 'BTC', url_image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Ethereum-icon-purple.svg/480px-Ethereum-icon-purple.svg.png', mining_type_id: 1 },
         { description: 'Dash', acronym: 'DSH', url_image: 'https://media.dash.org/wp-content/uploads/dash-d.png', mining_type_id: 1},
         { description: 'Ethereum', acronym: 'ETH', url_image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Ethereum-icon-purple.svg/480px-Ethereum-icon-purple.svg.png', mining_type_id: 1 }]

miningtypes = [{ description: 'Proof Of Work', acronym: 'PoW' }, { description: 'Proof Of Stake', acronym: 'PoS' }]

miningtypes.each do |e|
  MiningType.find_or_create_by(e)
end

coins.each do |e|
  Coin.find_or_create_by(e)
end

