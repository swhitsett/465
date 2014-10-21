# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
doirefs = DoiRef.create
(
   {url: 'http://www.google.com', doi_id: '1212'}
)
doitables = DoiTable.create
(
   {name: 'daSearchEngine', desc: 'findustuff', url: 'http://www.google.com'}

)
