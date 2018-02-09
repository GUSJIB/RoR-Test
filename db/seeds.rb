# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Transaction.create([
#   {
#     id: 1,
#     txref: "bhjfhdjfgdjhfds",
#     typeof: "buy",
#     asset: "gold",
#     amount: 10.0
#   },
#   {
#     id: 2,
#     txref: "fdmsklfjdlksfds",
#     typeof: "sell",
#     asset: "gold",
#     amount: 10.0
#   },
#   {
#     id: 3,
#     txref: "fds;ljfd;sf",
#     typeof: "top_up",
#     asset: "cash",
#     amount: 10.0
#   }
# ])
Balance.create([gld: 0, cash: 0])
