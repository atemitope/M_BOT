# require "mr/version"
require 'slack-ruby-bot'
# require 'meeting_rooms.rb'

ENV['SLACK_API_TOKEN'] ='xoxb-32438496736-PINAZJrC2mwlCqqSc0bcHy8g'

module Mr
  class Mr < SlackRubyBot::Bot
    command 'All Rooms' do |client, data, match|
      client.say(text: "*Ground floor:* Orion, Cafeteria \n *First floor:* Mercury, Neptune, Pluto, Mars \n *Third floor:* Conference Room, Saturn, Moon", 
                channel: data.channel)
    end


    command 'first floor' do |client, data, match|
      client.say(text: '*First floor:* Mercury, Neptune, Pluto, Mars', 
                channel: data.channel)
    end

    command 'f1' do |client, data, match|
      client.say(text: '*First floor:* Mercury, Neptune, Pluto, Mars', 
                channel: data.channel)
    end

    command 'third floor' do |client, data, match|
      client.say(text: '*Third floor:* Conference Room, Saturn, Moon', 
                channel: data.channel)
    end

    command 'f3' do |client, data, match|
      client.say(text: '*Third floor:* Conference Room, Saturn, Moon', 
                channel: data.channel)
    end

    command 'ground floor' do |client, data, match|
      client.say(text: '*Ground floor:* Orion, Cafeteria', 
                channel: data.channel)
    end

    command 'g0' do |client, data, match|
      client.say(text: '*Ground floor:* Orion, Cafeteria', 
                channel: data.channel)
    end

    command 'f0' do |client, data, match|
      client.say(text: '*Ground floor:* Orion, Cafeteria', 
                channel: data.channel)
    end

    command 'help' do |client, data, match|
      client.say(text: "*All Commands:*\n Type `All Rooms` to fetch all Rooms \n  Type `<room name>` to fetch details about the meeting room, eg `Mercury` to fetch details about Mercury meeting room \n Type `f1` or `first floor` to check all the rooms on the first floor \n Type `f3` or `third floor` to check all the rooms on the third floor \n Type `g0` or `ground floor` to check all the rooms on the ground floor ", 
                channel: data.channel)
    end


    match /\S+/ do |client, data, match|
      client.say(text: "Sorry we dont understand that command, However you can try any of the commands below \n*All Commands:*\n Type `All Rooms` to fetch all Rooms \n  Type `<room name>` to fetch details about the meeting room, eg `Mercury` to fetch details about Mercury meeting room \n Type `f1` or `first floor` to check all the rooms on the first floor \n Type `f3` or `third floor` to check all the rooms on the third floor \n Type `g0` or `ground floor` to check all the rooms on the ground floor ", 
                channel: data.channel)
    end

    # match /\S+/ do |client, data, match|
    #   client.say(text: "Did you mean #{data["text"]}?", 
    #             channel: data.channel)
    # end
  end
end

Mr::Mr.run