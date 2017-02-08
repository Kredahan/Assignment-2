# Assignment-2
A simple 2D game where the Player is surrounded by enemies both bigger and smaller than it. By eating smaller enemies than it the player can grow in Size. However attempting to eat enemies bigger than it causes the player to die and the game ends. For each enemy the player consumes, they grow in size proportionate to the size of the enemy they eat.

The concept was based on Katamari Damacy originally, a game where the player controls a ball that collects debris to grow in size and become huge. However I changed direction early in the project and focused on making an imitation of the flash game Agar IO, which I achieved for the most part.

Several major changes had to be made during the projects construction, namely the choice to use basic circular shapes (ellipses) as opposed to the PShapes that I drew initially. The PShapes were in the shape of a face for the main character, and a skull was used for the enemies, but setting the size of the PShape doesn't scale down the vertices correctly, you have to use the scale() command for that. However that scales by percentage as opposed to a simple numerical value, which made things awkward when it came to passing the size values between the player and enemy class. The decision to use simple shapes made the project work as intended, the player circle followed the mouse correctly as opposed to off by about 20 pixels, and the hitboxes made sense as opposed to arbitrary hitboxes that caused hits to occur between objects that were nowhere near each other.

The enemies spawn on the screen at a random location with a random size between a given range, however there is a possibility that the enemies that spawn will all be bigger than the player, making it impossible to proceed. To counteract this I added a smaller enemy who the player could always absorb, it remains at a constant size and is slightly faster than the other enemies.
I considered making the enemies chase the player which I did when I made a game last year, but I felt that could be easily exploited after only a little play time, so I used the reliable bouncing movement to solve this.

My Last project was much more aesthetically pleasing than this one but it did the same thing every time the user ran it. This one is more simple in visual design, but has the ability to be different every time.

My You Tube demo (OBS wasn't working correctly again for some reason)
[![Video](http://img.youtube.com/vi/CfmlS_w2p1o/0.jpg)](http://www.youtube.com/watch?v=CfmlS_w2p1o)
