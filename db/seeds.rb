# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb

Stock.create([
  { ticker: 'AAPL', name: 'Apple Inc.', last_price: 178.56 },
  { ticker: 'MSFT', name: 'Microsoft Corporation', last_price: 329.37 },
  { ticker: 'GOOGL', name: 'Alphabet Inc.', last_price: 143.88 },
  { ticker: 'AMZN', name: 'Amazon.com Inc.', last_price: 134.34 },
  { ticker: 'TSLA', name: 'Tesla Inc.', last_price: 248.23 },
  { ticker: 'META', name: 'Meta Platforms Inc.', last_price: 296.83 },
  { ticker: 'NVDA', name: 'NVIDIA Corporation', last_price: 486.58 },
  { ticker: 'BRK.A', name: 'Berkshire Hathaway Inc.', last_price: 550120.00 },
  { ticker: 'JNJ', name: 'Johnson & Johnson', last_price: 159.75 },
  { ticker: 'V', name: 'Visa Inc.', last_price: 235.47 },
  { ticker: 'JPM', name: 'JPMorgan Chase & Co.', last_price: 148.12 },
  { ticker: 'UNH', name: 'UnitedHealth Group Incorporated', last_price: 528.17 },
  { ticker: 'PG', name: 'Procter & Gamble Co.', last_price: 145.23 },
  { ticker: 'MA', name: 'Mastercard Incorporated', last_price: 403.45 },
  { ticker: 'DIS', name: 'The Walt Disney Company', last_price: 86.75 },
  { ticker: 'HD', name: 'The Home Depot, Inc.', last_price: 329.49 },
  { ticker: 'BAC', name: 'Bank of America Corporation', last_price: 28.59 },
  { ticker: 'XOM', name: 'Exxon Mobil Corporation', last_price: 109.37 },
  { ticker: 'KO', name: 'The Coca-Cola Company', last_price: 58.17 },
  { ticker: 'PEP', name: 'PepsiCo, Inc.', last_price: 169.47 },
  { ticker: 'INTC', name: 'Intel Corporation', last_price: 35.62 },
  { ticker: 'CSCO', name: 'Cisco Systems, Inc.', last_price: 52.45 },
  { ticker: 'ORCL', name: 'Oracle Corporation', last_price: 113.48 },
  { ticker: 'NFLX', name: 'Netflix, Inc.', last_price: 429.23 },
  { ticker: 'PYPL', name: 'PayPal Holdings, Inc.', last_price: 59.32 },
  { ticker: 'ADBE', name: 'Adobe Inc.', last_price: 531.12 },
  { ticker: 'CRM', name: 'Salesforce, Inc.', last_price: 204.34 },
  { ticker: 'CMCSA', name: 'Comcast Corporation', last_price: 46.78 },
  { ticker: 'PFE', name: 'Pfizer Inc.', last_price: 33.12 },
  { ticker: 'T', name: 'AT&T Inc.', last_price: 14.75 },
  { ticker: 'C', name: 'Citigroup Inc.', last_price: 39.28 },
  { ticker: 'WMT', name: 'Walmart Inc.', last_price: 157.23 },
  { ticker: 'MCD', name: 'McDonald\'s Corporation', last_price: 279.45 },
  { ticker: 'ABBV', name: 'AbbVie Inc.', last_price: 144.32 },
  { ticker: 'CVX', name: 'Chevron Corporation', last_price: 159.84 },
  { ticker: 'NKE', name: 'NIKE, Inc.', last_price: 103.47 },
  { ticker: 'MDT', name: 'Medtronic plc', last_price: 76.12 },
  { ticker: 'BA', name: 'The Boeing Company', last_price: 197.45 },
  { ticker: 'IBM', name: 'International Business Machines Corporation', last_price: 134.78 },
  { ticker: 'GE', name: 'General Electric Company', last_price: 115.45 },
  { ticker: 'CAT', name: 'Caterpillar Inc.', last_price: 271.32 },
  { ticker: 'SPG', name: 'Simon Property Group, Inc.', last_price: 116.88 },
  { ticker: 'PLTR', name: 'Palantir Technologies Inc.', last_price: 15.76 },
  { ticker: 'SQ', name: 'Block, Inc.', last_price: 56.34 },
  { ticker: 'SHOP', name: 'Shopify Inc.', last_price: 59.24 },
  { ticker: 'ZM', name: 'Zoom Video Communications, Inc.', last_price: 63.45 },
  { ticker: 'ROKU', name: 'Roku, Inc.', last_price: 79.23 },
  { ticker: 'SBUX', name: 'Starbucks Corporation', last_price: 96.56 },
  { ticker: 'TGT', name: 'Target Corporation', last_price: 122.45 }
])

puts 'Stocks table has been fully seeded with additional fictitious entries!'
