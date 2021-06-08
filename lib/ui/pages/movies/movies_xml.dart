const moviesXml = '''<?xml version="1.0"?>
<Movies>
    <Movie>
        <Name>300</Name>
        <Year>2006</Year>
        <ImgName>300.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>10,000 BC</Name>
        <Year>2008</Year>
        <ImgName>10000_bc.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>17 Again</Name>
        <Year>2009</Year>
        <ImgName>17_again.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>21 &amp; Over</Name>
        <Year>2013</Year>
        <ImgName>21_and_over.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>21 Jump Street</Name>
        <Year>2012</Year>
        <Series>21 Jump Street</Series>
        <ImgName>21_jump_street.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>22 Jump Street</Name>
        <Year>2014</Year>
        <Series>21 Jump Street</Series>
        <ImgName>22_jump_street.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The 40-Year-Old Virgin</Name>
        <Year>2005</Year>
        <ImgName>the_40_year_old_virgin.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>A Bug's Life</Name>
        <Year>1998</Year>
        <ImgName>a_bugs_life.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>A Clockwork Orange</Name>
        <Year>1971</Year>
        <ImgName>a_clockwork_orange.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>A.I. Artificial Intelligence</Name>
        <Year>2001</Year>
        <ImgName>ai_artificial_intelligence.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>About Time</Name>
        <Year>2013</Year>
        <ImgName>about_time.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Accepted</Name>
        <Year>2006</Year>
        <ImgName>accepted.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Ace Ventura: Pet Detective</Name>
        <Year>1994</Year>
        <ImgName>ace_ventura_pet_detective.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Alvin and the Chipmunks</Name>
        <Year>2007</Year>
        <ImgName>alvin_and_the_chipmunks.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Amadeus</Name>
        <Year>1984</Year>
        <ImgName>amadeus.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>American Beauty</Name>
        <Year>1999</Year>
        <ImgName>american_beauty.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>American Pie</Name>
        <Year>1999</Year>
        <Series>American Pie</Series>
        <ImgName>american_pie.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>American Pie 2</Name>
        <Year>2001</Year>
        <Series>American Pie</Series>
        <ImgName>american_pie_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>American Wedding</Name>
        <Year>2003</Year>
        <Series>American Pie</Series>
        <ImgName>american_wedding.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>American Reunion</Name>
        <Year>2012</Year>
        <Series>American Pie</Series>
        <ImgName>american_reunion.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>American Pie Presents: Band Camp</Name>
        <Year>2005</Year>
        <Series>American Pie Presents</Series>
        <ImgName>american_pie_presents_band_camp.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>American Pie Presnets: The Naked Mile</Name>
        <Year>2006</Year>
        <Series>American Pie Presents</Series>
        <ImgName>american_pie_presents_the_naked_mile.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>American Pie Presents: Beta House</Name>
        <Year>2007</Year>
        <Series>American Pie Presents</Series>
        <ImgName>american_pie_presents_beta_house.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>American Pie Presents: The Book of Love</Name>
        <Year>2009</Year>
        <Series>American Pie Presents</Series>
        <ImgName>american_pie_presents_the_book_of_love.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>American Sniper</Name>
        <Year>2014</Year>
        <ImgName>american_sniper.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Angels in the Outfield</Name>
        <Year>1994</Year>
        <ImgName>angels_in_the_outfield.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Anger Management</Name>
        <Year>2003</Year>
        <ImgName>anger_management.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Animal House</Name>
        <Year>1978</Year>
        <ImgName>animal_house.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Ant-Man</Name>
        <Year>2015</Year>
        <Series>Ant-Man</Series>
        <ImgName>ant_man.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Ant-Man and the Wasp</Name>
        <Year>2018</Year>
        <Series>Ant-Man</Series>
        <ImgName>ant_man_and_the_wasp.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Avatar</Name>
        <Year>2009</Year>
        <ImgName>avatar.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Avengers: Age of Ultron</Name>
        <Year>2015</Year>
        <Series>The Avengers</Series>
        <ImgName>avengers_age_of_ultron.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Avengers: Endgame</Name>
        <Year>2019</Year>
        <Series>The Avengers</Series>
        <ImgName>avengers_endgame.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Avengers: Infinity War</Name>
        <Year>2018</Year>
        <Series>The Avengers</Series>
        <ImgName>avengers_infinity_war.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Babe</Name>
        <Year>1995</Year>
        <ImgName>babe.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Back to the Future </Name>
        <Year>1985</Year>
        <Series>Back to the Future</Series>
        <ImgName>back_to_the_future.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Back to the Future Part Ⅱ</Name>
        <Year>1989</Year>
        <Series>Back to the Future</Series>
        <ImgName>back_to_the_future_part_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Back to the Future Part Ⅲ</Name>
        <Year>1990</Year>
        <Series>Back to the Future</Series>
        <ImgName>back_to_the_future_part_3.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Bad Moms</Name>
        <Year>2016</Year>
        <ImgName>bad_moms.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Bad Teacher</Name>
        <Year>2011</Year>
        <ImgName>bad_teacher.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Basic Instinct</Name>
        <Year>1992</Year>
        <Series>Basic Instinct</Series>
        <ImgName>basic_instinct.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Basic Instinct 2</Name>
        <Year>2006</Year>
        <Series>Basic Instinct</Series>
        <ImgName>basic_instinct_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Batman Begins</Name>
        <Year>2005</Year>
        <Series>The Dark Knight</Series>
        <ImgName>batman_begins.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Dark Knight Rises</Name>
        <Year>2012</Year>
        <Series>The Dark Knight</Series>
        <ImgName>the_dark_knight_rises.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Battleship</Name>
        <Year>2012</Year>
        <ImgName>battleship.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Baywatch</Name>
        <Year>2017</Year>
        <ImgName>baywatch.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Beauty and the Beast</Name>
        <Year>2017</Year>
        <ImgName>beauty_and_the_beast.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Bee Movie</Name>
        <Year>2007</Year>
        <ImgName>bee_movie.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Big Hero 6</Name>
        <Year>2014</Year>
        <ImgName>big_hero_6.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Black Panther</Name>
        <Year>2018</Year>
        <ImgName>black_panther.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Black Swan</Name>
        <Year>2010</Year>
        <ImgName>black_swan.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Blue Mountain State: The Rise of Thadland</Name>
        <Year>2016</Year>
        <ImgName>blue_mountain_state_the_rise_of_thadland.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Bolt</Name>
        <Year>2008</Year>
        <ImgName>bolt.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Borat: Cultural Learnings of America for Make Benefit Glorious Nation of Kazakhstan</Name>
        <Year>2006</Year>
        <ImgName>borat.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Brave</Name>
        <Year>2012</Year>
        <ImgName>brave.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Bruce Almighty</Name>
        <Year>2003</Year>
        <Series>Bruce Almighty</Series>
        <ImgName>bruce_almighty.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Evan Almighty</Name>
        <Year>2007</Year>
        <Series>Bruce Almighty</Series>
        <ImgName>evan_almighty.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Burning Sands</Name>
        <Year>2017</Year>
        <ImgName>burning_sands.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Captain America: The First Avenger</Name>
        <Year>2011</Year>
        <Series>Captain America</Series>
        <ImgName>captain_america_the_first_avenger.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Captain America: The Winter Soldier</Name>
        <Year>2014</Year>
        <Series>Captain America</Series>
        <ImgName>captain_america_the_winter_soldier.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Captain America: Civil War</Name>
        <Year>2016</Year>
        <Series>Captain America</Series>
        <ImgName>captain_america_civil_war.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Captain Marvel</Name>
        <Year>2019</Year>
        <ImgName>captain_marvel.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Cars</Name>
        <Year>2006</Year>
        <Series>Cars</Series>
        <ImgName>cars.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Cars 2</Name>
        <Year>2011</Year>
        <Series>Cars</Series>
        <ImgName>cars_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Catch Me if You Can</Name>
        <Year>2002</Year>
        <ImgName>catch_me_if_you_can.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Central Intelligence</Name>
        <Year>2016</Year>
        <ImgName>central_intelligence.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Charlotte's Web</Name>
        <Year>2006</Year>
        <ImgName>charlottes_web.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Chicken Little</Name>
        <Year>2005</Year>
        <ImgName>chicken_little.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Chitty Chitty Bang Bang</Name>
        <Year>1968</Year>
        <ImgName>chitty_chitty_bang_bang.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Click</Name>
        <Year>2006</Year>
        <ImgName>click.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Cloudy with a Chance of Meatballs</Name>
        <Year>2009</Year>
        <ImgName>cloudy_with_a_chance_of_meatballs.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Coraline</Name>
        <Year>2009</Year>
        <ImgName>coraline.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Corpse Bride</Name>
        <Year>2005</Year>
        <ImgName>corpse_bride.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Crazy Rich Asians</Name>
        <Year>2018</Year>
        <ImgName>crazy_rich_asians.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Crazy Stupid Love</Name>
        <Year>2011</Year>
        <ImgName>crazy_stupid_love.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Daddy's Home</Name>
        <Year>2015</Year>
        <ImgName>daddys_home.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Danny Collins</Name>
        <Year>2015</Year>
        <ImgName>danny_collins.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Date Night</Name>
        <Year>2010</Year>
        <ImgName>date_night.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Deadpool</Name>
        <Year>2016</Year>
        <Series>Deadpool</Series>
        <ImgName>deadpool.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Deadpool 2</Name>
        <Year>2018</Year>
        <Series>Deadpool</Series>
        <ImgName>deadpool_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Despicable Me</Name>
        <Year>2010</Year>
        <Series>Despicable Me</Series>
        <ImgName>despicable_me.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Minions</Name>
        <Year>2015</Year>
        <Series>Despicable Me</Series>
        <ImgName>minions.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Despicable Me 2</Name>
        <Year>2013</Year>
        <ImgName>despicable_me_2.jpg</ImgName>
    </Movie>
    <Movie>

        <Name>Dirty Grandpa</Name>

    </Movie>
    <Movie>

        <Name>Django Unchained</Name>

    </Movie>
    <Movie>

        <Name>Don Jon</Name>

    </Movie>
    <Movie>

        <Name>Dr. Strange</Name>

    </Movie>
    <Movie>

        <Name>Elf</Name>

    </Movie>
    <Movie>

        <Name>Escape Plan</Name>

    </Movie>
    <Movie>

        <Name>Euro Trip</Name>

    </Movie>
    <Movie>

        <Name>Everything Must Go</Name>

    </Movie>
    <Movie>

        <Name>Fantastic 4</Name>

    </Movie>
    <Movie>

        <Name>Fantastic 4 (2015)</Name>

    </Movie>
    <Movie>

        <Name>Fantastic 4 2</Name>

    </Movie>
    <Movie>

        <Name>Fight Club</Name>

    </Movie>
    <Movie>

        <Name>Finding Nemo</Name>

    </Movie>
    <Movie>

        <Name>Focus</Name>

    </Movie>
    <Movie>

        <Name>Forgetting Sarah Marshall</Name>

    </Movie>
    <Movie>

        <Name>Forrest Gump</Name>

    </Movie>
    <Movie>

        <Name>Frozen</Name>

    </Movie>
    <Movie>

        <Name>Fundamentals of Caring</Name>

    </Movie>
    <Movie>

        <Name>G.I. Joe</Name>

    </Movie>
    <Movie>

        <Name>G.I. Joe 2</Name>

    </Movie>
    <Movie>

        <Name>Get Hard</Name>

    </Movie>
    <Movie>

        <Name>Get Out</Name>


        <Year>2017</Year>

    </Movie>
    <Movie>

        <Name>Gods of Egypt</Name>

    </Movie>
    <Movie>

        <Name>Gravity</Name>

    </Movie>
    <Movie>

        <Name>Hancock</Name>

    </Movie>
    <Movie>

        <Name>Harold and Kumar</Name>

    </Movie>
    <Movie>

        <Name>Harold and Kumar 2</Name>

    </Movie>
    <Movie>

        <Name>Harry Potter 1</Name>

    </Movie>
    <Movie>

        <Name>Harry Potter 2</Name>

    </Movie>
    <Movie>

        <Name>Harry Potter 3</Name>

    </Movie>
    <Movie>

        <Name>Harry Potter 4</Name>

    </Movie>
    <Movie>

        <Name>Harry Potter 5</Name>

    </Movie>
    <Movie>

        <Name>Harry Potter 6</Name>

    </Movie>
    <Movie>

        <Name>Harry Potter 7-1</Name>

    </Movie>
    <Movie>

        <Name>Harry Potter 7-2</Name>

    </Movie>
    <Movie>

        <Name>Home Alone </Name>

    </Movie>
    <Movie>

        <Name>Home Alone 2</Name>

    </Movie>
    <Movie>

        <Name>Horrible Bosses</Name>

    </Movie>
    <Movie>

        <Name>Horrible Bosses 2</Name>

    </Movie>
    <Movie>

        <Name>How to be Single</Name>

    </Movie>
    <Movie>

        <Name>How to Train Your Dragon</Name>

    </Movie>
    <Movie>

        <Name>Hulk</Name>

    </Movie>
    <Movie>

        <Name>Hulk 2</Name>

    </Movie>
    <Movie>

        <Name>Hunger Games</Name>

    </Movie>
    <Movie>

        <Name>Hunger Games 2</Name>

    </Movie>
    <Movie>

        <Name>Hunger Games 3-1</Name>

    </Movie>
    <Movie>

        <Name>Hunger Games 3-2</Name>

    </Movie>
    <Movie>

        <Name>I Love You Man</Name>

    </Movie>
    <Movie>

        <Name>I Love You Phillip Morris</Name>

    </Movie>
    <Movie>

        <Name>Inglorious Bastards</Name>

    </Movie>
    <Movie>

        <Name>Inside Out</Name>

    </Movie>
    <Movie>

        <Name>Into the Woods</Name>

    </Movie>
    <Movie>

        <Name>Iron Man</Name>

    </Movie>
    <Movie>

        <Name>Iron Man 2</Name>

    </Movie>
    <Movie>

        <Name>Iron Man 3</Name>

    </Movie>
    <Movie>

        <Name>Isn't It Romantic (2019)</Name>

    </Movie>
    <Movie>

        <Name>Jack the Giant Slayer</Name>

    </Movie>
    <Movie>

        <Name>James and the Giant Peach</Name>

    </Movie>
    <Movie>

        <Name>Jerry McGuire</Name>

    </Movie>
    <Movie>

        <Name>Jigsaw</Name>

    </Movie>
    <Movie>

        <Name>John Carter</Name>

    </Movie>
    <Movie>

        <Name>Jumper</Name>

    </Movie>
    <Movie>

        <Name>Kickass</Name>

    </Movie>
    <Movie>

        <Name>Kickass 2</Name>

    </Movie>
    <Movie>

        <Name>Kingsmen The Secret Service</Name>

    </Movie>
    <Movie>

        <Name>Knocked Up</Name>

    </Movie>
    <Movie>

        <Name>Kung Fu Panda</Name>

    </Movie>
    <Movie>

        <Name>Kung Fu Panda 2</Name>

    </Movie>
    <Movie>

        <Name>Kung Fu Panda 3</Name>

    </Movie>
    <Movie>

        <Name>La La Land</Name>

    </Movie>
    <Movie>

        <Name>Leap</Name>

    </Movie>
    <Movie>

        <Name>Les Miserables</Name>

    </Movie>
    <Movie>

        <Name>Liar Liar</Name>

    </Movie>
    <Movie>

        <Name>Little Shop of Horrors</Name>

    </Movie>
    <Movie>

        <Name>Logan (2017)</Name>

    </Movie>
    <Movie>

        <Name>Lolita</Name>

    </Movie>
    <Movie>

        <Name>Lord of the Rings </Name>

    </Movie>
    <Movie>

        <Name>Lord of the Rings 2</Name>

    </Movie>
    <Movie>

        <Name>Lord of the Rings 3</Name>

    </Movie>
    <Movie>

        <Name>Love Actually</Name>

    </Movie>
    <Movie>

        <Name>Madagascar</Name>

    </Movie>
    <Movie>

        <Name>Man Up</Name>

    </Movie>
    <Movie>

        <Name>Mannequin</Name>

    </Movie>
    <Movie>

        <Name>Mannequin Two: On the Move</Name>

    </Movie>
    <Movie>

        <Name>Marley and Me</Name>

    </Movie>
    <Movie>

        <Name>Mary Poppins</Name>

    </Movie>
    <Movie>

        <Name>Mary Poppins Returns</Name>

    </Movie>
    <Movie>

        <Name>Meet Dave</Name>

    </Movie>
    <Movie>

        <Name>Meet the Parents</Name>


        <Year>2000</Year>


        <Series>Meet the Parents</Series>

    </Movie>
    <Movie>

        <Name>Meet the Fockers</Name>


        <Year>2004</Year>


        <Series>Meet the Parents</Series>

    </Movie>
    <Movie>

        <Name>Little Fockers</Name>


        <Year>2010</Year>


        <Series>Meet the Parents</Series>

    </Movie>
    <Movie>

        <Name>Megamind</Name>

    </Movie>
    <Movie>

        <Name>Men in Black</Name>

    </Movie>
    <Movie>

        <Name>Men in Black 3</Name>

    </Movie>
    <Movie>

        <Name>MILF </Name>


        <Year>2018</Year>

    </Movie>
    <Movie>

        <Name>Moana</Name>

    </Movie>
    <Movie>

        <Name>Monster House</Name>

    </Movie>
    <Movie>

        <Name>Monsters Inc</Name>

    </Movie>
    <Movie>

        <Name>Monsters University</Name>

    </Movie>
    <Movie>

        <Name>Mother's Day</Name>

    </Movie>
    <Movie>

        <Name>Mr and Mrs Smith</Name>

    </Movie>
    <Movie>

        <Name>Mulan</Name>

    </Movie>
    <Movie>

        <Name>My Big Fat Greek Wedding</Name>

    </Movie>
    <Movie>

        <Name>Naked</Name>

    </Movie>
    <Movie>

        <Name>Neighbors </Name>


        <Year>2014</Year>

    </Movie>
    <Movie>

        <Name>Neighbors 2: Sorority Rising</Name>


        <Year>2016</Year>

    </Movie>
    <Movie>

        <Name>Night at the Museum</Name>

    </Movie>
    <Movie>

        <Name>No Instructions Included</Name>

    </Movie>
    <Movie>

        <Name>Nothing Like the Holidays</Name>

    </Movie>
    <Movie>

        <Name>Now You See Me</Name>

    </Movie>
    <Movie>

        <Name>Office Christmas Party</Name>

    </Movie>
    <Movie>

        <Name>Orphan</Name>

    </Movie>
    <Movie>

        <Name>Pain &amp; Gain</Name>

    </Movie>
    <Movie>

        <Name>Pan's Labyrith</Name>

    </Movie>
    <Movie>

        <Name>Percy Jackson &amp; the Olympians</Name>

    </Movie>
    <Movie>

        <Name>Peter Pan</Name>

    </Movie>
    <Movie>

        <Name>Pineapple Express</Name>

    </Movie>
    <Movie>

        <Name>Pink Panther</Name>

    </Movie>
    <Movie>

        <Name>Pink Panther 2</Name>

    </Movie>
    <Movie>

        <Name>Pirates of Carribean</Name>

    </Movie>
    <Movie>

        <Name>Planes</Name>

    </Movie>
    <Movie>

        <Name>Pokémon Detective Pikachu</Name>


        <Year>2019</Year>

    </Movie>
    <Movie>

        <Name>Popstar</Name>

    </Movie>
    <Movie>

        <Name>Pretty Woman</Name>


        <Year>1990</Year>

    </Movie>
    <Movie>

        <Name>Prisoners</Name>

    </Movie>
    <Movie>

        <Name>Purge</Name>

    </Movie>
    <Movie>
        <Name>Push</Name>
        <Year>2009</Year>
        <ImgName>push.jpg</ImgName>
    </Movie>
    <Movie>

        <Name>Purge 2 </Name>

    </Movie>
    <Movie>

        <Name>Ratatouille</Name>

    </Movie>
    <Movie>

        <Name>Ready Player One</Name>


        <Year>2018</Year>

    </Movie>
    <Movie>

        <Name>Red</Name>

    </Movie>
    <Movie>

        <Name>Red 2</Name>

    </Movie>
    <Movie>

        <Name>Remember the Titans</Name>

    </Movie>
    <Movie>

        <Name>Robots </Name>

    </Movie>
    <Movie>

        <Name>Role Models</Name>

    </Movie>
    <Movie>

        <Name>Rudy</Name>

    </Movie>
    <Movie>

        <Name>Sausage Party</Name>

    </Movie>
    <Movie>

        <Name>Saw </Name>

        <Series>Saw</Series>

    </Movie>
    <Movie>

        <Name>Saw 2</Name>

        <Series>Saw</Series>

    </Movie>
    <Movie>

        <Name>Saw 3</Name>

        <Series>Saw</Series>

    </Movie>
    <Movie>

        <Name>Saw 4</Name>

        <Series>Saw</Series>

    </Movie>
    <Movie>

        <Name>Saw 5</Name>

        <Series>Saw</Series>

    </Movie>
    <Movie>

        <Name>Saw 6</Name>

        <Series>Saw</Series>

    </Movie>
    <Movie>

        <Name>Saw 7</Name>

        <Series>Saw</Series>

    </Movie>
    <Movie>

        <Name>School of Rock</Name>

    </Movie>
    <Movie>

        <Name>Shazam!</Name>


        <Year>2019</Year>

    </Movie>
    <Movie>

        <Name>She's Out of My League</Name>

    </Movie>
    <Movie>

        <Name>Shrek</Name>

        <Series>Shrek</Series>

    </Movie>
    <Movie>

        <Name>Shrek 2</Name>

        <Series>Shrek</Series>

    </Movie>
    <Movie>

        <Name>Shrek 3</Name>

        <Series>Shrek</Series>

    </Movie>
    <Movie>

        <Name>Shrek 4</Name>

        <Series>Shrek</Series>

    </Movie>
    <Movie>

        <Name>Silver Linings Playbook</Name>

    </Movie>
    <Movie>

        <Name>Sing</Name>

    </Movie>
    <Movie>

        <Name>Sing Street</Name>

    </Movie>
    <Movie>

        <Name>Singin' in the Rain</Name>

    </Movie>
    <Movie>

        <Name>Sisters</Name>

    </Movie>
    <Movie>

        <Name>Sky High</Name>

    </Movie>
    <Movie>

        <Name>Sleeping with Other People</Name>

    </Movie>
    <Movie>

        <Name>Slumdog Millionaire</Name>

    </Movie>
    <Movie>

        <Name>Soul</Name>


        <Year>2020</Year>

    </Movie>
    <Movie>

        <Name>Spare Parts</Name>

    </Movie>
    <Movie>

        <Name>Spider-Man</Name>

    </Movie>
    <Movie>

        <Name>Spider-Man 2</Name>

    </Movie>
    <Movie>

        <Name>Spider-Man: Far From Home</Name>

    </Movie>
    <Movie>

        <Name>Spider-Man: Homecoming</Name>

    </Movie>
    <Movie>

        <Name>Spy</Name>

    </Movie>
    <Movie>

        <Name>St. Vincent</Name>

    </Movie>
    <Movie>

        <Name>Star Wars</Name>

    </Movie>
    <Movie>
        <Name>Adam</Name>
        <Year>2020</Year>
    </Movie>
    <Movie>

        <Name>Stepbrothers</Name>

    </Movie>
    <Movie>

        <Name>Stranger than Fiction</Name>

    </Movie>
    <Movie>

        <Name>Superbad</Name>

    </Movie>
    <Movie>

        <Name>Taken</Name>

    </Movie>
    <Movie>

        <Name>Taken 2</Name>

    </Movie>
    <Movie>

        <Name>Taken 3</Name>

    </Movie>
    <Movie>

        <Name>Tangled</Name>

    </Movie>
    <Movie>

        <Name>Tarjan</Name>

    </Movie>
    <Movie>

        <Name>Ted</Name>

    </Movie>
    <Movie>

        <Name>Ted 2</Name>

    </Movie>
    <Movie>

        <Name>The Age of Adaline</Name>

    </Movie>
    <Movie>

        <Name>The Anchorman</Name>

    </Movie>
    <Movie>

        <Name>The Anchorman 2</Name>

    </Movie>
    <Movie>

        <Name>The Angriest Man in Brooklyn</Name>

    </Movie>
    <Movie>
        <Name>The Avengers</Name>
        <Year>2012</Year>
        <Series>The Avengers</Series>
        <ImgName>the_avengers.jpg</ImgName>
    </Movie>
    <Movie>

        <Name>The Boss Baby</Name>

    </Movie>
    <Movie>

        <Name>The Breakfast Club</Name>

    </Movie>
    <Movie>

        <Name>The Bucket List</Name>

    </Movie>
    <Movie>

        <Name>The Butterfly Effect</Name>

    </Movie>
    <Movie>

        <Name>The Change Up</Name>

    </Movie>
    <Movie>

        <Name>The Climb</Name>

    </Movie>
    <Movie>

        <Name>The Curious Case of Benjamin Button</Name>

    </Movie>
    <Movie>

        <Name>The Devil Wears Prada</Name>

    </Movie>
    <Movie>

        <Name>The Dictator</Name>

    </Movie>
    <Movie>

        <Name>The Do-Over</Name>

    </Movie>
    <Movie>

        <Name>The DUFF</Name>

    </Movie>
    <Movie>

        <Name>The Expendables</Name>

    </Movie>
    <Movie>

        <Name>The Five Year Engagement</Name>

    </Movie>
    <Movie>

        <Name>The Foreigner</Name>

    </Movie>
    <Movie>

        <Name>The Founder</Name>

    </Movie>
    <Movie>

        <Name>The Giver</Name>

    </Movie>
    <Movie>

        <Name>The Great Gatsby</Name>

    </Movie>
    <Movie>

        <Name>The Guardians of the Galaxy</Name>

    </Movie>
    <Movie>

        <Name>The Guardians of the Galaxy 2</Name>

    </Movie>
    <Movie>

        <Name>The Hangover </Name>

    </Movie>
    <Movie>

        <Name>The Hangover 2</Name>

    </Movie>
    <Movie>

        <Name>The Hangover 3</Name>

    </Movie>
    <Movie>

        <Name>The Heat</Name>

    </Movie>
    <Movie>

        <Name>The Hobbit</Name>

    </Movie>
    <Movie>

        <Name>The Hot Tub Timemachine</Name>

    </Movie>
    <Movie>

        <Name>The Hot Tub Timemachine 2</Name>

    </Movie>
    <Movie>

        <Name>The Imitation Game</Name>

    </Movie>
    <Movie>

        <Name>The Incredibles</Name>

    </Movie>
    <Movie>

        <Name>The Intern</Name>

    </Movie>
    <Movie>

        <Name>The Interview</Name>

    </Movie>
    <Movie>

        <Name>The Intouchables</Name>


        <Year>2011</Year>

    </Movie>
    <Movie>

        <Name>The Invention of Lying</Name>

    </Movie>
    <Movie>

        <Name>The Jungle Book</Name>

    </Movie>
    <Movie>

        <Name>The Karate Kid</Name>

    </Movie>
    <Movie>

        <Name>The Last Airbender</Name>

    </Movie>
    <Movie>

        <Name>The Lion King</Name>

    </Movie>
    <Movie>

        <Name>The Little Mermaid</Name>

    </Movie>
    <Movie>

        <Name>The Other Guys</Name>

    </Movie>
    <Movie>

        <Name>The Outsiders</Name>

    </Movie>
    <Movie>

        <Name>The Phantom of the Opera</Name>

    </Movie>
    <Movie>

        <Name>The Polar Express</Name>

    </Movie>
    <Movie>

        <Name>The Princess and the Frog</Name>

    </Movie>
    <Movie>

        <Name>The Princess Bride</Name>

    </Movie>
    <Movie>

        <Name>The Pursuit of Happiness</Name>

    </Movie>
    <Movie>

        <Name>The Rocky Horror Picture Show</Name>

    </Movie>
    <Movie>

        <Name>The Secret Life of Walter Mitty</Name>

    </Movie>
    <Movie>

        <Name>The Sixth Sense</Name>

    </Movie>
    <Movie>

        <Name>The Sorcerer's Apprentice</Name>

    </Movie>
    <Movie>

        <Name>The Switch</Name>

    </Movie>
    <Movie>

        <Name>The Terminal</Name>

    </Movie>
    <Movie>

        <Name>The Truman Show</Name>

    </Movie>
    <Movie>

        <Name>The Wedding Ringer</Name>

    </Movie>
    <Movie>

        <Name>The Wolf of the Wall Street</Name>

    </Movie>
    <Movie>

        <Name>There's Something about Mary</Name>

    </Movie>
    <Movie>

        <Name>Thor</Name>

    </Movie>
    <Movie>

        <Name>Thor: Ragnarok</Name>

    </Movie>
    <Movie>

        <Name>Thor: The Dark World</Name>

    </Movie>
    <Movie>

        <Name>Titanic</Name>

    </Movie>
    <Movie>

        <Name>Toy Story</Name>

    </Movie>
    <Movie>

        <Name>Toy Story 2</Name>

    </Movie>
    <Movie>

        <Name>Toy Story 3</Name>

    </Movie>
    <Movie>

        <Name>Trainwreck</Name>

    </Movie>
    <Movie>

        <Name>Transformers</Name>

    </Movie>
    <Movie>

        <Name>Transformers 2</Name>

    </Movie>
    <Movie>

        <Name>Tucker &amp; Dale vs. Evil</Name>

    </Movie>
    <Movie>

        <Name>Two Night Stand</Name>

    </Movie>
    <Movie>

        <Name>Up</Name>

    </Movie>
    <Movie>

        <Name>Venom</Name>

    </Movie>
    <Movie>

        <Name>WALL-E</Name>

    </Movie>
    <Movie>

        <Name>War of the Worlds</Name>

    </Movie>
    <Movie>

        <Name>Warm Bodies</Name>

    </Movie>
    <Movie>

        <Name>We're the Millers</Name>

    </Movie>
    <Movie>

        <Name>Wedding Crashers</Name>

    </Movie>
    <Movie>

        <Name>What Happened to Monday </Name>


        <Year>2017</Year>

    </Movie>
    <Movie>

        <Name>Whiplash</Name>

    </Movie>
    <Movie>

        <Name>Why Him?</Name>

    </Movie>
    <Movie>

        <Name>Win Win</Name>

    </Movie>
    <Movie>

        <Name>X Men Origins: Wolverine</Name>


        <Year>2009</Year>


        <Series>Wolverine</Series>

    </Movie>
    <Movie>

        <Name>The Wolverine</Name>


        <Year>2013</Year>


        <Series>Wolverine</Series>

    </Movie>
    <Movie>

        <Name>World's Greatest Dad</Name>

    </Movie>
    <Movie>

        <Name>Wreck-It Ralph</Name>
        <Series>Wreck-It Ralph</Series>

    </Movie>
    <Movie>

        <Name>X-Men</Name>


        <Year>2000</Year>


        <Series>X-Men</Series>

    </Movie>
    <Movie>

        <Name>X2</Name>


        <Year>2003</Year>


        <Series>X-Men</Series>

    </Movie>
    <Movie>

        <Name>X-Men: The Last Stand</Name>


        <Year>2006</Year>


        <Series>X-Men</Series>

    </Movie>
    <Movie>

        <Name>X-Men: First Class</Name>


        <Year>2011</Year>


        <Series>X-Men</Series>

    </Movie>
    <Movie>

        <Name>X-Men: Days of the Future Past</Name>


        <Year>2014</Year>


        <Series>X-Men</Series>

    </Movie>
    <Movie>

        <Name>X-Men 6: Apocalypse</Name>


        <Year>2016</Year>


        <Series>X-Men</Series>

    </Movie>
    <Movie>

        <Name>X-Men: Dark Phoenix</Name>


        <Year>2019</Year>


        <Series>X-Men</Series>

    </Movie>
    <Movie>

        <Name>Yes Man</Name>

    </Movie>
    <Movie>

        <Name>Yogi Bear</Name>

    </Movie>
    <Movie>

        <Name>Zack and Miri Make a Porno</Name>

    </Movie>
    <Movie>

        <Name>Zootopia</Name>

    </Movie>
    <Movie>

        <Name>Ralph Breaks the Internet</Name>


        <Year>2018</Year>


        <Series>Wreck-It Ralph</Series>

    </Movie>
    <Movie>

        <Name>Deadly Illusions</Name>


        <Year>2021</Year>

    </Movie>
    <Movie>

        <Name>Holidate</Name>


        <Year>2020</Year>

    </Movie>
    <Movie>

        <Name>To All the Boys I've Loved Before</Name>


        <Year>2018</Year>


        <Series>To All the Boys I've Loved Before</Series>

    </Movie>
    <Movie>

        <Name>To All the Boys: P.S. I Still Love You</Name>


        <Year>2020</Year>


        <Series>To All the Boys I've Loved Before</Series>

    </Movie>
    <Movie>

        <Name>To All the Boys: Always and Forever</Name>


        <Year>2021</Year>


        <Series>To All the Boys I've Loved Before</Series>

    </Movie>
    <Movie>

        <Name>The Father</Name>


        <Year>2020</Year>

    </Movie>
    <Movie>

        <Name>The Peanut Butter Falcon</Name>


        <Year>2019</Year>

    </Movie>
    <Movie>

        <Name>The Grand Budapest Hotel</Name>

    </Movie>
    <Movie>

        <Name>The After Party</Name>

    </Movie>
    <Movie>

        <Name>Minari</Name>

    </Movie>
    <Movie>

        <Name>Big Fish</Name>

    </Movie>
    <Movie>

        <Name>Dumb and Dumber</Name>


        <Year>1994</Year>

    </Movie>
    <Movie>

        <Name>Parasite</Name>


        <Year>2019</Year>

    </Movie>
    <Movie>

        <Name>Mantervention</Name>


        <Year>2014</Year>

    </Movie>
    <Movie>

        <Name>The Pool Boys</Name>


        <Year>2008</Year>

    </Movie>
    <Movie>

        <Name>The Night Clerk</Name>


        <Year>2020</Year>

    </Movie>
    <Movie>

        <Name>Circle</Name>


        <Year>2015</Year>

    </Movie>
    <Movie>

        <Name>Just Go With It</Name>


        <Year>2011</Year>

    </Movie>
    <Movie>

        <Name>It's Complicated</Name>


        <Year>2009</Year>

    </Movie>
    <Movie>
        <Name>Aladdin</Name>
        <Year>2019</Year>
        <ImgName>aladdin.jpg</ImgName>
    </Movie>
</Movies>
''';