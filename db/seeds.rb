# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#
# 名前,ふりがな,アドレス,性別,年齢,誕生日

require 'csv'
require 'pp'
HEADER = %w[ name kana_name mail_address sex age birthday ]
file = File.expand_path("../../private/users.csv",__FILE__)
CSV.open(file).each_with_index do |user,idx|
  next if idx == 0
  User.create!(Hash[HEADER.zip(user.to_a)])
end
