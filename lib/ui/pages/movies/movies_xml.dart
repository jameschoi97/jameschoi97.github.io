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
        <Name>21 and Over</Name>
        <Year>2013</Year>
        <ImgName>21_and_over.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>21 Jump Street</Name>
        <Year>2012</Year>
        <Series>21 Jump Street</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>21_jump_street.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>22 Jump Street</Name>
        <Year>2014</Year>
        <Series>21 Jump Street</Series>
        <SeriesIndex>2</SeriesIndex>
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
        <SeriesIndex>1</SeriesIndex>
        <ImgName>american_pie.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>American Pie 2</Name>
        <Year>2001</Year>
        <Series>American Pie</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>american_pie_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>American Wedding</Name>
        <Year>2003</Year>
        <Series>American Pie</Series>
        <SeriesIndex>3</SeriesIndex>
        <ImgName>american_wedding.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>American Reunion</Name>
        <Year>2012</Year>
        <Series>American Pie</Series>
        <SeriesIndex>4</SeriesIndex>
        <ImgName>american_reunion.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>American Pie Presents: Band Camp</Name>
        <Year>2005</Year>
        <Series>American Pie Presents</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>american_pie_presents_band_camp.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>American Pie Presnets: The Naked Mile</Name>
        <Year>2006</Year>
        <Series>American Pie Presents</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>american_pie_presents_the_naked_mile.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>American Pie Presents: Beta House</Name>
        <Year>2007</Year>
        <Series>American Pie Presents</Series>
        <SeriesIndex>3</SeriesIndex>
        <ImgName>american_pie_presents_beta_house.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>American Pie Presents: The Book of Love</Name>
        <Year>2009</Year>
        <Series>American Pie Presents</Series>
        <SeriesIndex>4</SeriesIndex>
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
        <SeriesIndex>1</SeriesIndex>
        <ImgName>ant_man.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Ant-Man and the Wasp</Name>
        <Year>2018</Year>
        <Series>Ant-Man</Series>
        <SeriesIndex>2</SeriesIndex>
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
        <SeriesIndex>2</SeriesIndex>
        <ImgName>avengers_age_of_ultron.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Avengers: Endgame</Name>
        <Year>2019</Year>
        <Series>The Avengers</Series>
        <SeriesIndex>4</SeriesIndex>
        <ImgName>avengers_endgame.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Avengers: Infinity War</Name>
        <Year>2018</Year>
        <Series>The Avengers</Series>
        <SeriesIndex>3</SeriesIndex>
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
        <SeriesIndex>1</SeriesIndex>
        <ImgName>back_to_the_future.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Back to the Future Part II</Name>
        <Year>1989</Year>
        <Series>Back to the Future</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>back_to_the_future_part_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Back to the Future Part III</Name>
        <Year>1990</Year>
        <Series>Back to the Future</Series>
        <SeriesIndex>3</SeriesIndex>
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
        <SeriesIndex>1</SeriesIndex>
        <ImgName>basic_instinct.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Basic Instinct 2</Name>
        <Year>2006</Year>
        <Series>Basic Instinct</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>basic_instinct_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Batman Begins</Name>
        <Year>2005</Year>
        <Series>The Dark Knight</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>batman_begins.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Dark Knight Rises</Name>
        <Year>2012</Year>
        <Series>The Dark Knight</Series>
        <SeriesIndex>3</SeriesIndex>
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
        <SeriesIndex>1</SeriesIndex>
        <ImgName>bruce_almighty.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Evan Almighty</Name>
        <Year>2007</Year>
        <Series>Bruce Almighty</Series>
        <SeriesIndex>2</SeriesIndex>
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
        <SeriesIndex>1</SeriesIndex>
        <ImgName>captain_america_the_first_avenger.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Captain America: The Winter Soldier</Name>
        <Year>2014</Year>
        <Series>Captain America</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>captain_america_the_winter_soldier.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Captain America: Civil War</Name>
        <Year>2016</Year>
        <Series>Captain America</Series>
        <SeriesIndex>3</SeriesIndex>
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
        <SeriesIndex>1</SeriesIndex>
        <ImgName>cars.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Cars 2</Name>
        <Year>2011</Year>
        <Series>Cars</Series>
        <SeriesIndex>2</SeriesIndex>
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
        <SeriesIndex>1</SeriesIndex>
        <ImgName>deadpool.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Deadpool 2</Name>
        <Year>2018</Year>
        <Series>Deadpool</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>deadpool_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Despicable Me</Name>
        <Year>2010</Year>
        <Series>Despicable Me</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>despicable_me.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Minions</Name>
        <Year>2015</Year>
        <Series>Despicable Me</Series>
        <SeriesIndex>3</SeriesIndex>
        <ImgName>minions.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Despicable Me 2</Name>
        <Year>2013</Year>
        <Series>Despicable Me</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>despicable_me_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Dirty Grandpa</Name>
        <Year>2016</Year>
        <ImgName>dirty_grandpa.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Django Unchained</Name>
        <Year>2012</Year>
        <ImgName>django_unchained.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Don Jon</Name>
        <Year>2013</Year>
        <ImgName>don_jon.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Doctor Strange</Name>
        <Year>2016</Year>
        <ImgName>doctor_strange.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Elf</Name>
        <Year>2003</Year>
        <ImgName>elf.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Escape Plan</Name>
        <Year>2013</Year>
        <ImgName>escape_plan.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Escape Room</Name>
        <Year>2019</Year>
        <ImgName>escape_room.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Euro Trip</Name>
        <Year>2004</Year>
        <ImgName>euro_trip.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Everything Must Go</Name>
        <Year>2010</Year>
        <ImgName>everything_must_go.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Fantastic Four</Name>
        <Year>2005</Year>
        <Series>Fantastic Four</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>fantastic_four_2005.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Fantastic Four</Name>
        <Year>2015</Year>
        <ImgName>fantastic_four_2015.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Fantastic 4: Rise of the Silver Surfer</Name>
        <Year>2007</Year>
        <Series>Fantastic Four</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>fantastic_4_rise_of_the_silver_surfer.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Fight Club</Name>
        <Year>1999</Year>
        <ImgName>fight_club.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Finding Nemo</Name>
        <Year>2003</Year>
        <ImgName>finding_nemo.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Focus</Name>
        <Year>2015</Year>
        <ImgName>focus.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Forgetting Sarah Marshall</Name>
        <Year>2008</Year>
        <ImgName>forgetting_sarah_marshall.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Forrest Gump</Name>
        <Year>1994</Year>
        <ImgName>forrest_gump.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Frozen</Name>
        <Year>2013</Year>
        <ImgName>frozen.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Fundamentals of Caring</Name>
        <Year>2016</Year>
        <ImgName>the_fundamentals_of_caring.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>G.I. Joe: The Rise of Cobra</Name>
        <Year>2009</Year>
        <Series>G.I. Joe</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>gi_joe_the_rise_of_cobra.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>G.I. Joe: Retaliation</Name>
        <Year>2013</Year>
        <Series>G.I. Joe</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>gi_joe_retaliation.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Get Hard</Name>
        <Year>2015</Year>
        <ImgName>get_hard.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Get Out</Name>
        <Year>2017</Year>
        <ImgName>get_out.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Gods of Egypt</Name>
        <Year>2016</Year>
        <ImgName>gods_of_egypt.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Gravity</Name>
        <Year>2013</Year>
        <ImgName>gravity.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Hancock</Name>
        <Year>2008</Year>
        <ImgName>hancock.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Harold and Kumar Go to White Castle</Name>
        <Year>2004</Year>
        <Series>Harold and Kumar</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>harold_and_kumar_go_to_white_castle.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Harold and Kumar Escape from Guantanamo Bay</Name>
        <Year>2008</Year>
        <Series>Harold and Kumar</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>harold_and_kumar_escape_from_guantanamo_bay.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Harry Potter and the Sorcerer's Stone</Name>
        <Year>2001</Year>
        <Series>Harry Potter</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>harry_potter_and_the_sorcerers_stone.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Harry Potter and the Chamber of Secrets</Name>
        <Year>2002</Year>
        <Series>Harry Potter</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>harry_potter_and_the_chamber_of_secrets.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Harry Potter and the Prisoner of Azkaban</Name>
        <Year>2004</Year>
        <Series>Harry Potter</Series>
        <SeriesIndex>3</SeriesIndex>
        <ImgName>harry_potter_and_the_prisoner_of_azkaban.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Harry Potter and the Goblet of Fire</Name>
        <Year>2005</Year>
        <Series>Harry Potter</Series>
        <SeriesIndex>4</SeriesIndex>
        <ImgName>harry_potter_and_the_goblet_of_fire.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Harry Potter and the Order of the Phoenix</Name>
        <Year>2007</Year>
        <Series>Harry Potter</Series>
        <SeriesIndex>5</SeriesIndex>
        <ImgName>harry_potter_and_the_order_of_the_phoenix.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Harry Potter and the Half-Blood Prince</Name>
        <Year>2009</Year>
        <Series>Harry Potter</Series>
        <SeriesIndex>6</SeriesIndex>
        <ImgName>harry_potter_and_the_half_blood_prince.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Harry Potter and the Deathly Hallows: Part 1</Name>
        <Year>2010</Year>
        <Series>Harry Potter</Series>
        <SeriesIndex>7</SeriesIndex>
        <ImgName>harry_potter_and_the_deathly_hallows_part_1.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Harry Potter and the Deathly Hallows: Part 2</Name>
        <Year>2011</Year>
        <Series>Harry Potter</Series>
        <SeriesIndex>8</SeriesIndex>
        <ImgName>harry_potter_and_the_deathly_hallows_part_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Home Alone</Name>
        <Year>1990</Year>
        <Series>Home Alone</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>home_alone.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Home Alone 2: Lost in New York</Name>
        <Year>1992</Year>
        <Series>Home Alone</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>home_alone_2_lost_in_new_york.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Horrible Bosses</Name>
        <Year>2011</Year>
        <Series>Horrible Bosses</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>horrible_bosses.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Horrible Bosses 2</Name>
        <Year>2014</Year>
        <Series>Horrible Bosses</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>horrible_bosses_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>How to be Single</Name>
        <Year>2016</Year>
        <ImgName>how_to_be_single.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>How to Train Your Dragon</Name>
        <Year>2010</Year>
        <Series>How to Train Your Dragon</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>how_to_train_your_dragon.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>How to Train Your Dragon: The Hidden World</Name>
        <Year>2019</Year>
        <Series>How to Train Your Dragon</Series>
        <SeriesIndex>3</SeriesIndex>
        <ImgName>how_to_train_your_dragon_the_hidden_world.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Hustle</Name>
        <Year>2019</Year>
        <ImgName>the_hustle.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Hulk</Name>
        <Year>2003</Year>
        <Series>Hulk</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>hulk.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Incredible Hulk</Name>
        <Year>2008</Year>
        <Series>Hulk</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>the_incredible_hulk.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Hunger Games</Name>
        <Year>2012</Year>
        <Series>The Hunger Games</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>the_hunger_games.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Hunger Games: Catching Fire</Name>
        <Year>2013</Year>
        <Series>The Hunger Games</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>the_hunger_games_catching_fire.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Hunger Games: Mockingjay - Part 1</Name>
        <Year>2014</Year>
        <Series>The Hunger Games</Series>
        <SeriesIndex>3</SeriesIndex>
        <ImgName>the_hunger_games_mockingjay_part_1.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Hunger Games: Mockingjay - Part 2</Name>
        <Year>2015</Year>
        <Series>The Hunger Games</Series>
        <SeriesIndex>4</SeriesIndex>
        <ImgName>the_hunger_games_mockingjay_part_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>I Love You, Man</Name>
        <Year>2009</Year>
        <ImgName>i_love_you_man.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>I Love You Phillip Morris</Name>
        <Year>2009</Year>
        <ImgName>i_love_you_phillip_morris.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Inglourious Basterds</Name>
        <Year>2009</Year>
        <ImgName>inglourious_basterds.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Inside Out</Name>
        <Year>2015</Year>
        <ImgName>inside_out.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Into the Woods</Name>
        <Year>2014</Year>
        <ImgName>into_the_woods.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Iron Man</Name>
        <Year>2008</Year>
        <Series>Iron Man</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>iron_man.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Iron Man 2</Name>
        <Year>2010</Year>
        <Series>Iron Man</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>iron_man_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Iron Man 3</Name>
        <Year>2013</Year>
        <Series>Iron Man</Series>
        <SeriesIndex>3</SeriesIndex>
        <ImgName>iron_man_3.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Isn't It Romantic</Name>
        <Year>2019</Year>
        <ImgName>isnt_it_romantic.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Jack the Giant Slayer</Name>
        <Year>2013</Year>
        <ImgName>jack_the_giant_slayer.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>James and the Giant Peach</Name>
        <Year>1996</Year>
        <ImgName>james_and_the_giant_peach.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Jerry Maguire</Name>
        <Year>1996</Year>
        <ImgName>jerry_maguire.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Jigsaw</Name>
        <Year>2017</Year>
        <Series>Saw</Series>
        <SeriesIndex>8</SeriesIndex>
        <ImgName>jigsaw.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>John Carter</Name>
        <Year>2012</Year>
        <ImgName>john_carter.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Jumper</Name>
        <Year>2008</Year>
        <ImgName>jumper.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Kick-Ass</Name>
        <Year>2010</Year>
        <Series>Kick-Ass</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>kick_ass.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Kick-Ass 2</Name>
        <Year>2013</Year>
        <Series>Kick-Ass</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>kick_ass_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Kingsman: The Secret Service</Name>
        <Year>2014</Year>
        <Series>Kingsman</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>kingsman_the_secret_service.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Kingsman: The Golden Circle</Name>
        <Year>2017</Year>
        <Series>Kingsman</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>kingsman_the_golden_circle.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Knocked Up</Name>
        <Year>2007</Year>
        <ImgName>knocked_up.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Kung Fu Panda</Name>
        <Year>2008</Year>
        <Series>Kung Fu Panda</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>kung_fu_panda.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Kung Fu Panda 2</Name>
        <Year>2011</Year>
        <Series>Kung Fu Panda</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>kung_fu_panda_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Kung Fu Panda 3</Name>
        <Year>2016</Year>
        <Series>Kung Fu Panda</Series>
        <SeriesIndex>3</SeriesIndex>
        <ImgName>kung_fu_panda_3.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>La La Land</Name>
        <Year>2016</Year>
        <ImgName>la_la_land.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Leap</Name>
        <Year>2016</Year>
        <ImgName>leap.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Les Misérables</Name>
        <Year>2012</Year>
        <ImgName>les_miserables.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Liar Liar</Name>
        <Year>1997</Year>
        <ImgName>liar_liar.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Little Shop of Horrors</Name>
        <Year>1986</Year>
        <ImgName>little_shop_of_horrors.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Logan</Name>
        <Year>2017</Year>
        <Series>Wolverine</Series>
        <SeriesIndex>3</SeriesIndex>
        <ImgName>logan.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Lolita</Name>
        <Year>1997</Year>
        <ImgName>lolita.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Lord of the Rings: The Fellowship of the Ring</Name>
        <Year>2001</Year>
        <Series>The Lord of the Rings</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>the_lord_of_the_rings_the_fellowship_of_the_ring.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Lord of the Rings: The Two Towers</Name>
        <Year>2002</Year>
        <Series>The Lord of the Rings</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>the_lord_of_the_rings_the_two_towers.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Lord of the Rings: The Return of the King</Name>
        <Year>2003</Year>
        <Series>The Lord of the Rings</Series>
        <SeriesIndex>3</SeriesIndex>
        <ImgName>the_lord_of_the_rings_the_return_of_the_king.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Love Actually</Name>
        <Year>2003</Year>
        <ImgName>love_actually.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Madagascar</Name>
        <Year>2005</Year>
        <ImgName>madagascar.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Man Up</Name>
        <Year>2015</Year>
        <ImgName>man_up.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Mannequin</Name>
        <Year>1987</Year>
        <Series>Mannequin</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>mannequin.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Mannequin: On the Move</Name>
        <Year>1991</Year>
        <Series>Mannequin</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>mannequin_on_the_move.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Marley and Me</Name>
        <Year>2008</Year>
        <ImgName>marley_and_me.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Mary Poppins</Name>
        <Year>1964</Year>
        <Series>Mary Poppins</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>mary_poppins.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Mary Poppins Returns</Name>
        <Year>2018</Year>
        <Series>Mary Poppins</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>marry_poppins_returns.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Meet Dave</Name>
        <Year>2008</Year>
        <ImgName>meet_dave.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Meet the Parents</Name>
        <Year>2000</Year>
        <Series>Meet the Parents</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>meet_the_parents.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Meet the Fockers</Name>
        <Year>2004</Year>
        <Series>Meet the Parents</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>meet_the_fockers.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Little Fockers</Name>
        <Year>2010</Year>
        <Series>Meet the Parents</Series>
        <SeriesIndex>3</SeriesIndex>
        <ImgName>little_fockers.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Megamind</Name>
        <Year>2010</Year>
        <ImgName>megamind.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Men in Black</Name>
        <Year>1997</Year>
        <Series>Men in Black</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>men_in_black.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Men in Black 3</Name>
        <Year>2012</Year>
        <Series>Men in Black</Series>
        <SeriesIndex>3</SeriesIndex>
        <ImgName>men_in_black_3.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Men in Black: International</Name>
        <Year>2019</Year>
        <Series>Men in Black</Series>
        <SeriesIndex>4</SeriesIndex>
        <ImgName>men_in_black_international.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>MILF </Name>
        <Year>2018</Year>
        <ImgName>milf.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Moana</Name>
        <Year>2016</Year>
        <ImgName>moana.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Monster House</Name>
        <Year>2006</Year>
        <ImgName>monster_house.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Monsters, Inc.</Name>
        <Year>2001</Year>
        <Series>Monsters, Inc.</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>monsters_inc.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Monsters University</Name>
        <Year>2013</Year>
        <Series>Monsters, Inc.</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>monsters_university.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Mother's Day</Name>
        <Year>2016</Year>
        <ImgName>mothers_day.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Mr and Mrs Smith</Name>
        <Year>2015</Year>
        <ImgName>mr_and_mrs_smith.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Mulan</Name>
        <Year>1998</Year>
        <ImgName>mulan.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>My Big Fat Greek Wedding</Name>
        <Year>2002</Year>
        <ImgName>my_big_fat_greek_wedding.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Naked</Name>
        <Year>2017</Year>
        <ImgName>naked.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Neighbors </Name>
        <Year>2014</Year>
        <Series>Neighbors</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>neighbors.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Neighbors 2: Sorority Rising</Name>
        <Year>2016</Year>
        <Series>Neighbors</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>neighbors_2_sorority_rising.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Night at the Museum</Name>
        <Year>2006</Year>
        <ImgName>night_at_the_museum.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Instructions NotIncluded</Name>
        <Year>2013</Year>
        <ImgName>instructions_not_included.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Nothing Like the Holidays</Name>
        <Year>2008</Year>
        <ImgName>nothing_like_the_holidays.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Now You See Me</Name>
        <Year>2013</Year>
        <ImgName>now_you_see_me.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Office Christmas Party</Name>
        <Year>2016</Year>
        <ImgName>office_christmas_party.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Orphan</Name>
        <Year>2009</Year>
        <ImgName>orphan.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Pain and Gain</Name>
        <Year>2013</Year>
        <ImgName>pain_and_gain.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Pan's Labyrith</Name>
        <Year>2006</Year>
        <ImgName>pans_labyrinth.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Percy Jackson and the Olympians: The Lightening Thief</Name>
        <Year>2010</Year>
        <ImgName>percy_jackson_and_the_olympians_the_lightening_thief.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Peter Pan</Name>
        <Year>2003</Year>
        <ImgName>peter_pan.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Pineapple Express</Name>
        <Year>2008</Year>
        <ImgName>pineapple_express.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Pink Panther</Name>
        <Year>2006</Year>
        <Series>The Pink Panther</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>the_pink_panther.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Pink Panther 2</Name>
        <Year>2009</Year>
        <Series>The Pink Panther</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>the_pink_panther_2.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Pirates of Carribean: The Curse of the Black Pearl</Name>
        <Year>2003</Year>
        <ImgName>pirates_of_the_caribbean_the_curse_of_the_black_pearl.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Planes</Name>
        <Year>2013</Year>
        <ImgName>planes.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Pokémon Detective Pikachu</Name>
        <Year>2019</Year>
        <ImgName>pokemon_detective_pikachu.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Popstar: Never Stop Never Stopping</Name>
        <Year>2016</Year>
        <ImgName>popstar_never_stop_never_stopping.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Pretty Woman</Name>
        <Year>1990</Year>
        <ImgName>pretty_woman.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Prisoners</Name>
        <Year>2013</Year>
        <ImgName>prisoners.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Purge</Name>
        <Year>2013</Year>
        <ImgName>the_purge.jpg</ImgName>
        <Series>The Purge</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>
        <Name>Push</Name>
        <Year>2009</Year>
        <ImgName>push.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>The Purge: Anarchy</Name>
        <Year>2014</Year>
        <ImgName>the_purge_anarchy.jpg</ImgName>
        <Series>The Purge</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>
        <Name>Ratatouille</Name>
        <Year>2007</Year>
        <ImgName>ratatouille.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Ready Player One</Name>
        <Year>2018</Year>
        <ImgName>ready_player_one.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Red</Name>
        <Year>2010</Year>
        <ImgName>RED.jpg</ImgName>
        <Series>RED</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>
        <Name>RED 2</Name>
        <Year>2013</Year>
        <ImgName>RED2.jpg</ImgName>
        <Series>RED</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>
        <Name>Remember the Titans</Name>
        <Year>2000</Year>
        <ImgName>remember_the_titans.jpg</ImgName>

    </Movie>
    <Movie>
        <Name>Robots </Name>
        <Year>2005</Year>
        <ImgName>robots.jpg</ImgName>

    </Movie>
    <Movie>
        <Name>Role Models</Name>
        <Year>2008</Year>
        <ImgName>role_models.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Rudy</Name>
        <Year>1993</Year>
        <ImgName>rudy.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Sausage Party</Name>
        <Year>2016</Year>
        <ImgName>sausage_party.jpg</ImgName>

    </Movie>
    <Movie>
        <Name>Saw </Name>
        <Year>2004</Year>
        <Series>Saw</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>saw.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Saw II</Name>
        <Year>2005</Year>
        <Series>Saw</Series>
        <SeriesIndex>2</SeriesIndex>
        <ImgName>saw_2.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Saw III</Name>
        <Year>2006</Year>
        <Series>Saw</Series>
        <SeriesIndex>3</SeriesIndex>
        <ImgName>saw_3.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Saw IV</Name>
        <Year>2007</Year>
        <Series>Saw</Series>
        <SeriesIndex>4</SeriesIndex>
        <ImgName>saw_4.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Saw V</Name>
        <Year>2008</Year>
        <Series>Saw</Series>
        <SeriesIndex>5</SeriesIndex>
        <ImgName>saw_5.jpeg</ImgName>
    </Movie>
    <Movie>
        <Name>Saw VI</Name>
        <Year>2009</Year>
        <Series>Saw</Series>
        <SeriesIndex>6</SeriesIndex>
        <ImgName>saw_6.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Saw: The Final Chapter</Name>
        <Year>2010</Year>
        <Series>Saw</Series>
        <SeriesIndex>7</SeriesIndex>
        <ImgName>saw_the_final_chapter.jpg</ImgName>
    </Movie>
    <Movie>

        <Name>School of Rock</Name>
        <Year>2003</Year>
        <ImgName>school_of_rock.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Shazam!</Name>


        <Year>2019</Year>
        <ImgName>shazam.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>She's Out of My League</Name>
        <Year>2010</Year>
        <ImgName>shes_out_of_my_league.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Shrek</Name>
        <Year>2001</Year>
        <ImgName>shrek.jpg</ImgName>

        <Series>Shrek</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Shrek 2</Name>
        <Year>2004</Year>
        <ImgName>shrek2.jpg</ImgName>
        <Series>Shrek</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Shrek the Third</Name>
        <Year>2007</Year>
        <ImgName>shrek_the_third.jpg</ImgName>

        <Series>Shrek</Series>
        <SeriesIndex>3</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Shrek Forever After</Name>
        <Year>2010</Year>
        <ImgName>shrek_forever_after.jpg</ImgName>

        <Series>Shrek</Series>
        <SeriesIndex>4</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Silver Linings Playbook</Name>
        <Year>2012</Year>
        <ImgName>silver_linings_playbook.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Sing</Name>
        <Year>2016</Year>
        <ImgName>sing.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Sing Street</Name>
        <Year>2016</Year>
        <ImgName>sing_street.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Singin' in the Rain</Name>
        <Year>1952</Year>
        <ImgName>singin_in_the_rain.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Sisters</Name>
        <Year>2015</Year>
        <ImgName>sisters.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Sky High</Name>
        <Year>2005</Year>
        <ImgName>sky_high.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Sleeping with Other People</Name>
        <Year>2015</Year>
        <ImgName>sleeping_with_other_people.jpg</ImgName>


    </Movie>
    <Movie>

        <Name>Slumdog Millionaire</Name>
        <Year>2008</Year>
        <ImgName>slumdog_millionaire.jpg</ImgName>


    </Movie>
    <Movie>

        <Name>Soul</Name>


        <Year>2020</Year>
        <ImgName>soul.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Spare Parts</Name>
        <Year>2015</Year>
        <ImgName>spare_parts.jpg</ImgName>


    </Movie>
    <Movie>

        <Name>Spider-Man</Name>
        <Year>2002</Year>
        <ImgName>spiderman.jpeg</ImgName>
        <Series>Spider-Man</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Spider-Man 2</Name>
        <Year>2004</Year>
        <ImgName>spiderman2.jpg</ImgName>
        <Series>Spider-Man</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Spider-Man: Far From Home</Name>
        <Year>2019</Year>
        <ImgName>spiderman_far_from_home.jpg</ImgName>
        <Series>Spider-Man: Homecoming</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Spider-Man: Homecoming</Name>
        <Year>2017</Year>
        <ImgName>spiderman_homecoming.jpg</ImgName>
        <Series>Spider-Man: Homecoming</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Spy</Name>
        <Year>2015</Year>
        <ImgName>spy.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>St. Vincent</Name>
        <Year>2014</Year>
        <ImgName>st_vincent.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Star Wars: Episode IV - A New Hope</Name>
        <Year>1977</Year>
        <ImgName>star_wars_episode_iv_a_new_hope.jpg</ImgName>


    </Movie>
    <Movie>
        <Name>Adam</Name>
        <Year>2020</Year>
        <ImgName>adam.jpg</ImgName>
    </Movie>
    <Movie>

        <Name>Stepbrothers</Name>
        <Year>2008</Year>
        <ImgName>stepbrothers.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Stranger than Fiction</Name>
        <Year>2006</Year>
        <ImgName>stranger_than_fiction.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Superbad</Name>
        <Year>2007</Year>
        <ImgName>superbad.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Taken</Name>
        <Year>2008</Year>
        <ImgName>taken.jpg</ImgName>
        <Series>Taken</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Taken 2</Name>
        <Year>2012</Year>
        <ImgName>taken2.jpg</ImgName>
        <Series>Taken</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Taken 3</Name>
        <Year>2014</Year>
        <ImgName>taken3.jpg</ImgName>
        <Series>Taken</Series>
        <SeriesIndex>3</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Tangled</Name>
        <Year>2010</Year>
        <ImgName>tangled.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Tarjan</Name>
        <Year>1999</Year>
        <ImgName>tarjan.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Ted</Name>
        <Year>2012</Year>
        <ImgName>ted.jpg</ImgName>
        <Series>Ted</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Ted 2</Name>
        <Year>2015</Year>
        <ImgName>ted2.jpg</ImgName>
        <Series>Ted</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>

        <Name>The Age of Adaline</Name>
        <Year>2015</Year>
        <ImgName>the_age_of_adaline.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Anchorman: The Legend of Ron Burgundy</Name>
        <Year>2004</Year>
        <ImgName>anchorman_the_legend_of_ron_burgundy.jpg</ImgName>
        <Series>Anchorman</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Anchorman 2: The Legend Continues</Name>
        <Year>2013</Year>
        <ImgName>anchorman2_the_legend_continues.jpeg</ImgName>
        <Series>Anchorman</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>

        <Name>The Angriest Man in Brooklyn</Name>
        <Year>2014</Year>
        <ImgName>the_angriest_man_in_brooklyn.jpg</ImgName>

    </Movie>
    <Movie>
        <Name>The Avengers</Name>
        <Year>2012</Year>
        <Series>The Avengers</Series>
        <SeriesIndex>1</SeriesIndex>
        <ImgName>the_avengers.jpg</ImgName>
    </Movie>
    <Movie>

        <Name>The Boss Baby</Name>
        <Year>2017</Year>
        <ImgName>the_boss_baby.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Breakfast Club</Name>
        <Year>1985</Year>
        <ImgName>the_breakfast_club.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Bucket List</Name>
        <Year>2007</Year>
        <ImgName>the_bucket_list.jpeg</ImgName>

    </Movie>
    <Movie>

        <Name>The Butterfly Effect</Name>
        <Year>2004</Year>
        <ImgName>the_butterfly_effect.jpg</ImgName>


    </Movie>
    <Movie>

        <Name>The Change-Up</Name>
        <Year>2011</Year>
        <ImgName>the_change_up.jpg</ImgName>


    </Movie>
    <Movie>

        <Name>The Climb</Name>
        <Year>2017</Year>
        <ImgName>the_climb.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Curious Case of Benjamin Button</Name>
        <Year>2008</Year>
        <ImgName>the_curious_case_of_bejamin_button.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Devil Wears Prada</Name>
        <Year>2006</Year>
        <ImgName>the_devil_wears_prada.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Dictator</Name>
        <Year>2012</Year>
        <ImgName>the_dictator.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Do-Over</Name>
        <Year>2016</Year>
        <ImgName>the_do_over.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The DUFF</Name>
        <Year>2015</Year>
        <ImgName>the_DUFF.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Expendables</Name>
        <Year>2010</Year>
        <ImgName>the_expendables.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Five-Year Engagement</Name>
        <Year>2012</Year>
        <ImgName>the_five_year_engagement.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Foreigner</Name>
        <Year>2017</Year>
        <ImgName>the_foreigner.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Founder</Name>
        <Year>2016</Year>
        <ImgName>the_founder.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Giver</Name>
        <Year>2014</Year>
        <ImgName>the_giver.jpg</ImgName>


    </Movie>
    <Movie>

        <Name>The Great Gatsby</Name>
        <Year>2013</Year>
        <ImgName>the_great_gatsby.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Guardians of the Galaxy</Name>
        <Year>2014</Year>
        <ImgName>the_guardians_of_the_galaxy.jpg</ImgName>
        <Series>The Guardians of the Galaxy</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>

        <Name>The Guardians of the Galaxy Vol. 2</Name>
        <Year>2017</Year>
        <ImgName>the_guardians_of_the_galaxy_vol2.jpg</ImgName>
        <Series>The Guardians of the Galaxy</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>

        <Name>The Hangover</Name>
        <Year>2009</Year>
        <ImgName>the_hangover.jpg</ImgName>
        <Series>The Hangover</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>
        <Name>The Hangover Part II</Name>
        <Year>2011</Year>
        <ImgName>the_hangover_part_2.jpg</ImgName>
        <Series>The Hangover</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>

        <Name>The Hangover Part III</Name>
        <Year>2013</Year>
        <ImgName>the_hangover_part_3.jpg</ImgName>
        <Series>The Hangover</Series>
        <SeriesIndex>3</SeriesIndex>

    </Movie>
    <Movie>

        <Name>The Heat</Name>
        <Year>2013</Year>
        <ImgName>the_heat.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Hobbit: An Unexpected Journey</Name>
        <Year>2012</Year>
        <ImgName>the_hobbit_an_unexpected_journey.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Hot Tub Time Machine</Name>
        <Year>2010</Year>
        <ImgName>the_hot_tub_time_machine.jpg</ImgName>
        <Series>Hot Tub Time Machine</Series>
        <SeriesIndex>1</SeriesIndex>


    </Movie>
    <Movie>

        <Name>Hot Tub Time Machine 2</Name>
        <Year>2015</Year>
        <ImgName>hot_tub_time_machine2.jpg</ImgName>
        <Series>Hot Tub Time Machine</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>

        <Name>The Imitation Game</Name>
        <Year>2014</Year>
        <ImgName>the_imitation_game.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Incredibles</Name>
        <Year>2004</Year>
        <ImgName>the_incredibles.jpg</ImgName>
        <Series>The Incredibles</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>

    <Movie>
        <Name>Incredibles 2</Name>
        <Year>2018</Year>
        <ImgName>incredibles2.jpg</ImgName>
        <Series>The Incredibles</Series>
        <SeriesIndex>2</SeriesIndex>
    </Movie>
    <Movie>

        <Name>The Intern</Name>
        <Year>2015</Year>
        <ImgName>the_intern.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Interview</Name>
        <Year>2014</Year>
        <ImgName>the_interview.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Intouchables</Name>
        <Year>2011</Year>
        <ImgName>the_intouchables.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Invention of Lying</Name>
        <Year>2009</Year>
        <ImgName>the_invention_of_lying.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Jungle Book</Name>
        <Year>1967</Year>
        <ImgName>the_jungle_book.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Karate Kid</Name>
        <Year>2010</Year>
        <ImgName>the_karate_kid.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Last Airbender</Name>
        <Year>2010</Year>
        <ImgName>the_last_airbender.jpeg</ImgName>

    </Movie>
    <Movie>

        <Name>The Lion King</Name>
        <Year>1994</Year>
        <ImgName>the_lion_king.jpg</ImgName>


    </Movie>
    <Movie>

        <Name>The Little Mermaid</Name>
        <Year>1989</Year>
        <ImgName>the_little_mermaid.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Other Guys</Name>
        <Year>2010</Year>
        <ImgName>the_other_guys.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Outsiders</Name>
        <Year>1983</Year>
        <ImgName>the_outsiders.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Phantom of the Opera</Name>
        <Year>2004</Year>
        <ImgName>the_phantom_of_the_opera.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Polar Express</Name>
        <Year>2004</Year>
        <ImgName>the_polar_express.jpg</ImgName>


    </Movie>
    <Movie>

        <Name>The Princess and the Frog</Name>
        <Year>2009</Year>
        <ImgName>the_princess_and_the_frog.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Princess Bride</Name>
        <Year>1987</Year>
        <ImgName>the_princess_bride.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Pursuit of Happyness</Name>
        <Year>2006</Year>
        <ImgName>the_pursuit_of_happyness.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Rocky Horror Picture Show</Name>
        <Year>1975</Year>
        <ImgName>the_rocky_horror_picture_show.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Secret Life of Walter Mitty</Name>
        <Year>2013</Year>
        <ImgName>the_secret_life_of_walter_mitty.jpg</ImgName>


    </Movie>
    <Movie>

        <Name>The Sixth Sense</Name>
        <Year>1999</Year>
        <ImgName>the_sixth_sense.jpg</ImgName>


    </Movie>
    <Movie>

        <Name>The Sorcerer's Apprentice</Name>
        <Year>2010</Year>
        <ImgName>the_sorcerers_apprentice.jpeg</ImgName>


    </Movie>
    <Movie>

        <Name>The Switch</Name>
        <Year>2010</Year>
        <ImgName>the_switch.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Terminal</Name>
        <Year>2004</Year>
        <ImgName>the_terminal.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Truman Show</Name>
        <Year>1998</Year>
        <ImgName>the_truman_show.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Wedding Ringer</Name>
        <Year>2015</Year>
        <ImgName>the_wedding_ringer.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>The Wolf of the Wall Street</Name>
        <Year>2013</Year>
        <ImgName>the_wolf_of_wall_street.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>There's Something about Mary</Name>
        <Year>1998</Year>
        <ImgName>theres_something_about_mary.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Thor</Name>
        <Year>2011</Year>
        <ImgName>thor.jpg</ImgName>
        <Series>Thor</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Thor: Ragnarok</Name>
        <Year>2017</Year>
        <ImgName>thor_ragnarok.jpg</ImgName>
        <Series>Thor</Series>
        <SeriesIndex>3</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Thor: The Dark World</Name>
        <Year>2013</Year>
        <ImgName>thor_the_dark_world.jpg</ImgName>
        <Series>Thor</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Titanic</Name>
        <Year>1997</Year>
        <ImgName>titanic.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Toy Story</Name>
        <Year>1995</Year>
        <ImgName>toy_story.jpg</ImgName>
        <Series>Toy Story</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Toy Story 2</Name>
        <Year>1999</Year>
        <ImgName>toy_story2.jpg</ImgName>
        <Series>Toy Story</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Toy Story 3</Name>
        <Year>2010</Year>
        <ImgName>toy_story3.jpg</ImgName>
        <Series>Toy Story</Series>
        <SeriesIndex>3</SeriesIndex>

    </Movie>
    <Movie>
        <Name>Toy Story 4</Name>
        <Year>2019</Year>
        <ImgName>toy_story4.jpg</ImgName>
        <Series>Toy Story</Series>
        <SeriesIndex>4</SeriesIndex>
    </Movie>
    <Movie>

        <Name>Trainwreck</Name>
        <Year>2010</Year>
        <ImgName>trainwreck.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Transformers</Name>
        <Year>2007</Year>
        <ImgName>transformers.jpg</ImgName>
        <Series>Transformers</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Transformers: Revenge of the Fallen</Name>
        <Year>2009</Year>
        <ImgName>transformers_revenge_of_the_fallen.jpg</ImgName>
        <Series>Transformers</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Tucker and Dale vs Evil</Name>
        <Year>2010</Year>
        <ImgName>tucker_and_dale_vs_evil.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Two Night Stand</Name>
        <Year>2014</Year>
        <ImgName>two_night_stand.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Up</Name>
        <Year>2009</Year>
        <ImgName>up.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Venom</Name>
        <Year>2018</Year>
        <ImgName>venom.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>WALL·E</Name>
        <Year>2008</Year>
        <ImgName>walle.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>War of the Worlds</Name>
        <Year>2005</Year>
        <ImgName>war_of_the_worlds.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Warm Bodies</Name>
        <Year>2013</Year>
        <ImgName>warm_bodies.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>We're the Millers</Name>
        <Year>2013</Year>
        <ImgName>were_the_millers.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Wedding Crashers</Name>
        <Year>2005</Year>
        <ImgName>wedding_crashers.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>What Happened to Monday </Name>


        <Year>2017</Year>
        <ImgName>what_happened_to_monday.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Whiplash</Name>
        <Year>2014</Year>
        <ImgName>whiplash.jpg</ImgName>


    </Movie>
    <Movie>

        <Name>Why Him?</Name>
        <Year>2016</Year>
        <ImgName>why_him.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Win Win</Name>
        <Year>2011</Year>
        <ImgName>win_win.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>X Men Origins: Wolverine</Name>


        <Year>2009</Year>
        <ImgName>xmen_origins_wolverine.jpg</ImgName>
        <Series>Wolverine</Series>
        <SeriesIndex>1</SeriesIndex>
    </Movie>
    <Movie>
        <Name>The Wolverine</Name>
        <Year>2013</Year>
        <ImgName>the_wolverine.jpg</ImgName>
        <Series>Wolverine</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>

        <Name>World's Greatest Dad</Name>
        <Year>2009</Year>
        <ImgName>worlds_greatest_dad.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Wreck-It Ralph</Name>
        <Year>2012</Year>
        <ImgName>wreck_it_ralph.jpg</ImgName>
        <Series>Wreck-It Ralph</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>

        <Name>X-Men</Name>


        <Year>2000</Year>
        <ImgName>xmen.jpg</ImgName>


        <Series>X-Men</Series>
        <SeriesIndex>1</SeriesIndex>

    </Movie>
    <Movie>

        <Name>X2: X-Men United</Name>


        <Year>2003</Year>
        <ImgName>x2_xmen_united.jpg</ImgName>


        <Series>X-Men</Series>
        <SeriesIndex>2</SeriesIndex>

    </Movie>
    <Movie>

        <Name>X-Men: The Last Stand</Name>


        <Year>2006</Year>
        <ImgName>xmen_the_last_stand.jpg</ImgName>


        <Series>X-Men</Series>
        <SeriesIndex>3</SeriesIndex>

    </Movie>
    <Movie>

        <Name>X-Men: First Class</Name>


        <Year>2011</Year>
        <ImgName>xmen_first_class.jpg</ImgName>


        <Series>X-Men</Series>
        <SeriesIndex>4</SeriesIndex>

    </Movie>
    <Movie>

        <Name>X-Men: Days of Future Past</Name>


        <Year>2014</Year>
        <ImgName>xmen_days_of_future_past.jpg</ImgName>


        <Series>X-Men</Series>
        <SeriesIndex>5</SeriesIndex>

    </Movie>
    <Movie>

        <Name>X-Men: Apocalypse</Name>


        <Year>2016</Year>
        <ImgName>xmen_apocalypse.jpeg</ImgName>


        <Series>X-Men</Series>
        <SeriesIndex>6</SeriesIndex>

    </Movie>
    <Movie>

        <Name>X-Men: Dark Phoenix</Name>


        <Year>2019</Year>
        <ImgName>xmen_dark_phoenix.jpg</ImgName>


        <Series>X-Men</Series>
        <SeriesIndex>7</SeriesIndex>

    </Movie>
    <Movie>

        <Name>Yes Man</Name>
        <Year>2008</Year>
        <ImgName>yes_man.jpg</ImgName>


    </Movie>
    <Movie>

        <Name>Yogi Bear</Name>
        <Year>2010</Year>
        <ImgName>yogi_bear.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Zack and Miri Make a Porno</Name>
        <Year>2008</Year>
        <ImgName>zack_and_miri_make_a_porno.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Zootopia</Name>
        <Year>2016</Year>
        <ImgName>zootopia.jpg</ImgName>

    </Movie>
    <Movie>

        <Name>Ralph Breaks the Internet</Name>


        <Year>2018</Year>


        <Series>Wreck-It Ralph</Series>
        <SeriesIndex>2</SeriesIndex>

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
    <Movie>
        <Name>Meet Joe Black</Name>
        <Year>1998</Year>
        <ImgName>meet_joe_black.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>100 Things</Name>
        <Year>2018</Year>
        <ImgName>100_things.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>Onward</Name>
        <Year>2020</Year>
        <ImgName>onward.jpg</ImgName>
    </Movie>
    <Movie>
        <Name>3 Idiots</Name>
    </Movie>
    <Movie>
        <Name>Us</Name>
    </Movie>
    <Movie>
        <Name>Jumanji</Name>
    </Movie>
    <Movie>
        <Name>San Andreas</Name>
    </Movie>
    <Movie>
        <Name>Crystal Inferno</Name>
    </Movie>
    <Movie>
        <Name>The Package</Name>
    </Movie>
    <Movie>
        <Name>Vampire Academy</Name>
        <Year>2014</Year>
    </Movie>
    <Movie>
        <Name>Paddington</Name>
        <Year>2014</Year>
    </Movie>
    <Movie>
        <Name>Fatherhood</Name>
        <Year>2021</Year>
    </Movie>
    <Movie>
        <Name>Five Feet Apart</Name>
        <Year>2019</Year>
    </Movie>
    <Movie>
        <Name>The Guide to the Perfect Family</Name>
        <Year>2021</Year>
    </Movie>
    <Movie>
        <Name>Me Before You</Name>
        <Year>2016</Year>
    </Movie>
    <Movie>
        <Name>Palm Springs</Name>
        <year>2020</year>
    </Movie>
    <Movie>
        <Name>Superman Returns</Name>
        <Year>2006</Year>
    </Movie>
    <Movie>
        <Name>Joker</Name>
        <Year>2019</Year>
    </Movie>
    <Movie>
        <Name>Man of Steel</Name>
        <Year>2013</Year>
    </Movie>
    <Movie>
        <Name>Batman vs. Superman</Name>
        <Year>2016</Year>
    </Movie>
    <Movie>
        <Name>Suicide Squad</Name>
        <Year>2016</Year>
    </Movie>
    <Movie>
        <Name>Jumanji: The Next Level</Name>
        <Year>2019</Year>
    </Movie>
    <Movie>
        <Name>Smallfoot</Name>
        <Year>2018</Year>
    </Movie>
    <Movie>
        <Name>Set It Up</Name>
        <Year>2018</Year>
    </Movie>
    <Movie>
        <Name>Tusk</Name>
        <Year>2014</Year>
    </Movie>
    <Movie>
        <Name>Venom: Let There Be Carnage</Name>
        <Year>2021</Year>
    </Movie>
    <Movie>
        <Name>Black Widow</Name>
        <Year>2021</Year>
    </Movie>
    <Movie>
        <Name>Shang-Chi and the Legend of the Ten Rings</Name>
        <Year>2021</Year>
    </Movie>
    <Movie>
        <Name>Eternals</Name>
        <Year>2021</Year>
    </Movie>
    <Movie>
        <Name>Spider-Man: No Way Home</Name>
        <Year>2021</Year>
    </Movie>
    <Movie>
        <Name>The Hateful Eight</Name>
        <Year>2015</Year>
    </Movie>
    <Movie>
        <Name>The Unforgivable</Name>
        <Year>2021</Year>
    </Movie>


</Movies>
''';