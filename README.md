The Fast and Accessible Super Tube
========

First weekend challenge at Makers Academy

![enter image description here](https://pbs.twimg.com/media/Bx99N-FCEAABEtZ.jpg)

#What's the challenge?

![enter image description here](https://pbs.twimg.com/media/Bx9_puYCIAAKHEK.jpg)

#How to use this app

Start the interactive ruby shell with

    $ irb

Load the objects with the following

    > require_relative './lib/faast.rb'
    > sys = Faast.new

Now there is a system (sys) with a number of trains in side it. You can choose how many you want. The trains will travel from station to station. Check the following...

    > sys.stations.count = total stations
    > sys.stations.inject(0) {|r,s| r + s.platform.count } = total trains
    > sys.stations[0].platform[0].object_id
     => 70300117228820
    > sys.move_trains
    > sys.stations[0].platform[0].object_id