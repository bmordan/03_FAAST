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

###There will be a number of trains inside the system:

    > sys.stations.count
    > sys.trains.count

###Trains will travel from station to station

    > puts sys.stations[0].platform[0]
    > sys.move_trains
    > puts sys.stations[1].platform[0]

###At a station passangers will alight

    > puts sys.stations[1].platform[0].coaches[0].passangers.count
    > puts sys.stations[1].platform[0].coaches[0].passangers.inspect
    > puts sys.stations[1].platform[0].arrive

###and passangers at the station will board the trains
    > train = sys.stations[0].platform[0]
    > station = sys.stations[0]
    > in_the_station = station.passangers.count
    > on_the_train = train.coaches.inject(0) {|r,p| r + p.passangers.count}
    > station.empty(train)
    > in_the_station = station.passangers.count
    > on_the_train = train.coaches.inject(0) {|r,p| r + p.passangers.count}
    
