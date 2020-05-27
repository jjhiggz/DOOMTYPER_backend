require 'json'

class String
  def underscore
    self.gsub(/::/, '/').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    gsub(/([a-z\d])([A-Z])/,'\1_\2').
    tr("-", "_").
    downcase
  end
  def kebab
    self.gsub(/::/, '/').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    gsub(/([a-z\d])([A-Z])/,'\1_\2').
    tr("_", "-").
    downcase
  end
end

doomwords = 
  [
    'BFG',
    'doom-slayer',
    'argeant energy',
    'chainsaw',
    'The Icon of Sin',
    'demon',
    'the crucible',
    'hell priest',
    'taste the bite of my sword',
    'plasma gun',
    'classic shotgun',
    'meat hook',
    "your fight is eternal",
    "chain gun mini turret",
    'sentinel',
    'marauder',
    'pain elemental',
    'you killed my rabbit',
    'cyberdemon',
    'blood punch',
    'flame belch',
    'BFG-10,000',
    'praetor suit',
  ]
gloom_words = [
  "Geez I really hate life",
  "I wish life didn't suck so much",
  "life is like a line there is no point",
  "somtimes life hands you lemons, I hate lemons",
  "just remember when things get really shitty that one day you will die",
  "Whats the point of living if Taco Bell doesn't serve apple empanadas",
  "sometime life hands you lemons and you make lemonade but then go into a diabetic coma",
  "I wish I had more friends",
  "Dreams are very odd",
  "sometimes I like to take a handful of baby carrots and ...",
  "I'm really happy, just kidding",
  "Ask me why I'm feeling so sad and I'll tell you I'm not feeling sad in fact I'm not feeling anything at all"
]
zoom_words = [
  "2 fast 2 furious",
  "I wanna go fast",
  "Well let me just quote the late great Colonel Sanders, who said I'm too drunk to taste this chicken",
  "It won the Academy Award... Best movie ever made",
  "Here's the deal I'm the best there is. Plain and simple. I wake up in the morning and piss excellence",
  "I hope that both of you have sons... Handsome, beautiful, articulate sons, who are talented and star athletes and they have their legs taken away",
  "From now on, you're the Magic Man and I'm El Diablo",
  "Dear 8 pounds 6 ounces newborn baby Jesus, don't even know a word yet.",
  "Help me Jesus! Help me Jewish God! Help me Allah!",
  "If you don't chew Big Red, then fuck you"
]
html_elements = [
  "<input></input>",
  "<div></div>",
  "<hirejonhiggerasadev></hirejonhiggerasadev>",
  "<span></span>",
  "<p></p>",
  "<h1></h1>",
  "<h2></h2>",
  "<h3></h3>",
  "<section></section>",
  "<nav class='navbar'></nav>",
  "<div id='my-div' ></div",
  "<header></header>",
  "<footer></footer>",
  "<head></head>",
  "<body></body>",
  "<script></script>",
  "<link></link>",
  "<style></style>",
]

camel_case_bands = [
  "theBeatles",
  "systemOfADown",
  "greenDay",
  "oneDirection",
  "redHotChiliPeppers",
  "myChemicalRomance",
  "pineGrove",
  "savingFerris",
  "mightyMightyBosstones",
  "weezer",
  "thePixies",
  "theWho",
  "pinkFloyd",
  "theBeeGees",
  "linkinPark",
  "nirvana",
  "theFooFighters",
  "konaTheBand",
  "theButtholeSurfers",
  "streetlightManifesto",
  "reelBigFish",
  "gwar",
  "theCure",
  "sonicYouth",
  "semiSonic",
  "ween",
  "wilko",
  "dreamTheater",
  "xTreme",
]

dates = [  
  "1984 is a dystopian novel",
  "The Holocaust started in 1945",
  "The US declared independence in 1776",
  "Jon the great was born between 1990 and 2020",
  "Obama served from 2009 to 2017 as president",
  "Queen Elizabeth I was alive from 1533 to 1603",
  "in the year 1234 the Japanese monk Ippen was born",
  "The first DOOM game came out in 1993",
  "Jon made this typing game in 2020",
]

erotic_fiction = [
  "As he typed on his black ink linear switches, he relished in the supple yet firm response to the touch of his fingers",
  "Some say the IBM beamspring switch has the most satisfying click of any IBM model",
  "Buckling Spring Switches, are technically membrane switches, however unlike modern membrane switches, they don't suck complete ass",
  "LED backlit keyboards provide keyboard geeks with something to feel good about, since everything else in their lives is despair and utter dissapointment",
  "The ergoDox is a keyboard that is both highly ergonomic and highly functional",
  "Sometimes when I type, I'm staring at my lights",
  "I'm never gonna type again, guilty fingers got no rhythm",
  "cherry mx-browns",
  "gateron box-blues",
  "holy panda cream switches",
  "IBM-Model M", 
  "Mechanical Keyboards are the fucking bees knees",
  "COLEMAC or DVORAK you decide your fate",
]
ruby_strings= [
  'hello #{person}',
  'show me your #{body_part}',
  '#{user[:favorite_sport]} is my favorite sport',
  '#{rapper[:name]} is my favorite rapper',
  '#{song}? I do not like that one',
  'I come from #{user[:country]}',
  '#{params[:username]} is not valid you #{random_explative}',
]
random_character = [
  'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
  '1' ,'2', '3', '4', '5', '6', '7', '8', '9' , '!', '@', '#', '$', '%', '^', '&','*', '(', ')', '+', '=', "'", '"','{', '}', 
  '[', ']', ';', ':', '`', '~',',','.','<','>']

pbcb = [
  '[name]',
  '[age]',
  '[date]',
  '[gender]',
  '[yob]',
  '[username]',
  '{return true}',
  '{return false}',
  '{return 0}',
  '{return "yes of course I want  pie"}',
  '(hello)',
  '(event, name)',
  '(response => respons.json())',
  '(data => console.log(data))',
  'array.forEach(index => console.log(string))',
]
es6pract = [
  'const double = implicitReturn => implicitReturn * 2',
  'function double = (explicitReturn){ return explicitReturn * 2 }',
  'const double = (explicitReturn) => { return explicitReturn * 2 }',
  'const triple = implicitReturn => implicitReturn * 3',
  'function triple = (explicitReturn){ return explicitReturn * 3 }',
  'const triple = (explicitReturn) => { return explicitReturn * 3 }',
  'const quadruple = implicitReturn => implicitReturn * 4',
  'function quadruple = (explicitReturn){ return explicitReturn * 4 }',
  'const quadruple = (explicitReturn) => { return explicitReturn * 4 }',
  'const quintuple = implicitReturn => implicitReturn * 5',
  'function quintuple = (explicitReturn){ return explicitReturn * 5 }',
  'const quintuple = (explicitReturn) => { return explicitReturn * 5 }',

]

higgz_lyrics = [
  
    'She love the bbc exception for the jewish, BC like me before the year one, jeez, come out my pockets when I sneeze',
    "Tell me what's your type, girl I'm 80 words a minute, rough talk fast lane only way to win it if you wanted smooth speech",
    "This time might be different, but thats what I said last time, but now its not a past-time I've really got my life on the line",
    "Now you got me thinking back to when we were us, way back to a time where I had nothing but trust",
    "but now it seems I'm used to being used all along",
    "I got no problem when everybody on my dick, thats how I'll fuck the world like it was unity and I was rick",
    "I'll find a niche, and it'll get me rich, go from upper mid, up to richie rich",
    "I appreciate the honesty but honestly I kinda wish you didn't give it to me honestly",
    "you got ADD, I got ADD, add us both together we a crazy team",
    "I have never been a dick, even when a girl has been a benedict I let it slip",
    
  
]
ezwords = ('apple cheese poop friend master owns a piece of chicken because he has a friend that is made out of shark skin that is razor sharp with extra reason to be on the planet off the chain because I fucking told you so when are you going go around minus plus sometimes when we touch the honesty is able to tell when front side ways hamlet ankle arm head ear nose eyes face cheek taste touch smell feel feelings three four five six seven eight nine ten eleven twelve cookies post malone homie fornicate rabbit dog orange node javascript ruby python programming hyphen doom is sword jagged bruce batman superman wonderwoman spiderman ironman marathon mount everest cubic function first second third fourth fifth sixth seventh eighth ninth tenth million billion trillion galactus thanos doomguy doomslayer energy lukewarm cold warm hot steamy incredibly hungry angry timeless reaction chemistry biology order watermelon orange fruit banana pear chicken fish moose deer doe around bend break back forward left right space alpha beta gamma delta calculus covid corona coors yuengling budweiser pbr dope fresh off the chain blank full empty solidified crystallized tangent perpendicular brain freeze frozone incredible reason logic protools fruity funky freaky spooky spunky magic regular french france america american republican democrat trump clinton squinting focused unfocused disproportionate absolutely thematically pleasureable delectable delightful fruitful loins groins kick nuts leaf tree branch hole butt cigarette marijuana pills drugs fantastic grapefruit grape not').split(' ')

kebab_case_bands = camel_case_bands.map{|band| band.kebab}
snake_case_bands = camel_case_bands.map{|band| band.underscore}
# puts kebab_case_bands
# puts snake_case_bands
Score.destroy_all
Game.destroy_all
User.destroy_all
doom = Game.create( name: 'doom', words: doomwords.to_json )
Game.create( name: 'gloom', words: gloom_words.to_json )
Game.create( name: 'zoom', words: zoom_words.to_json )
Game.create( name: 'html', words: html_elements.to_json )
Game.create( name: 'camelBands', words: camel_case_bands.to_json )
Game.create( name: 'keba-bands', words: kebab_case_bands.to_json )
Game.create( name: 'snake_bands', words: snake_case_bands.to_json )
Game.create( name: 'ruby strings', words: ruby_strings.to_json )
Game.create( name: 'erotic fiction', words: erotic_fiction.to_json )
Game.create( name: 'dates', words: dates.to_json )
Game.create( name: 'random character', words: random_character.to_json )
Game.create( name: 'pbcb', words: pbcb.to_json )
Game.create( name: 'es6 practice', words: es6pract.to_json )
Game.create( name: 'higgz lyrics', words: higgz_lyrics.to_json )
Game.create( name: 'ez words', words: ezwords.to_json )

ahmed = User.create( username: 'ahmed', password:'tekashi69' )

Score.create(
  time_complete: 30,
  words_correct: 30,
  words_incorrect: 10,
  user: ahmed,
  game: doom,

)


