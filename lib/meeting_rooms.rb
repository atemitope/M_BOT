module Mr
  class Mr < SlackRubyBot::Bot
    command 'Mercury' do |client, data, match|
      client.say(text: "*Location:* First floor \n *Recommended Capacity:* 4 people \n *Description:* First Meeting Room to your right on the first floor", 
                channel: data.channel)
    end


    command 'Neptune' do |client, data, match|
      client.say(text: "*Location:* First floor\n *Recommended Capacity:* 6 people\n*Description:* First Meeting Room to your left on the first floor", 
                channel: data.channel)
    end

    command 'Pluto' do |client, data, match|
      client.say(text: "*Location:* First floor\n *Recommended Capacity:* 2 people\n *Directions:* Last Meeting Room to your right on the first floor", 
                channel: data.channel)
    end

    command 'Mars' do |client, data, match|
      client.say(text: "*Location:* First floor\n *Recommended Capacity:* 4 people\n *Directions:* Second Meeting Room to your right on the first floor", 
                channel: data.channel)
    end

    command 'Conference Room' do |client, data, match|
      client.say(text: "*Location:* Third floor\n *Recommended Capacity:* 10 people\n *Directions:* First Meeting Room to your left on the third floor", 
                channel: data.channel)
    end

    command 'Saturn' do |client, data, match|
      client.say(text: "*Location:* Third floor\n *Recommended Capacity:* 2 people\n *Directions:* Last Meeting Room to your left on the third floor", 
                channel: data.channel)
    end

    command 'Moon' do |client, data, match|
      client.say(text: "*Location:* Third floor\n *Recommended Capacity:* 4 people\n *Directions:* Last Meeting Room to your right on the third floor", 
                channel: data.channel)
    end
  end
end
