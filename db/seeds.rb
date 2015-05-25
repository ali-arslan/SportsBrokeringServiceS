# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake dbseed (or created alongside the db with dbsetup).
#
# Examples
#
#   cities = City.create([ name 'Chicago' ,  name 'Copenhagen' ])
#   Mayor.create(name 'Emanuel', city cities.first)
Team.create (name: 'Pakistan', team_type: international)
Team.create (name: 'India', team_type: international)
Team.create (name: 'Lahore', team_type: domestic)
Team.create (name: 'Auckland', team_type: domestic)


Match.create (team_1: 't1', team_2: 't2', match_type: international)
Match.create (team_1: 't3', team_2: 't4', match_type: domestic)
