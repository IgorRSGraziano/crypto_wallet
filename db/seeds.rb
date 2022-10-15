# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


coins = [{ description: 'Bitcoin', acronym: 'BTC', url_image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Ethereum-icon-purple.svg/480px-Ethereum-icon-purple.svg.png' }, { description: 'Dash', acronym: 'DSH', url_image: 'https://media.dash.org/wp-content/uploads/dash-d.png' }, { description: 'Ethereum', acronym: 'ETH', url_image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Ethereum-icon-purple.svg/480px-Ethereum-icon-purple.svg.png' }]

miningtypes = [{ name: 'Proof Of Work', acronym: 'PoW' }, { name: 'Proof Of Stake', acronym: 'PoS' }]

coins.each do |e|
  Coin.find_or_create_by(e)
end

miningtypes.each do |e|
  MiningType.find_or_create_by(e)
end