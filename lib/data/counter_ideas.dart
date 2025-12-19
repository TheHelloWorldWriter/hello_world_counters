// Copyright 2020-2025 The Hello World Writer. All rights reserved.
// https://www.thehelloworldwriter.com
//
// Use of this source code is governed by an MIT-style license
// that can be found in the LICENSE file.

import '../models/counter.dart';

/// A mapping of counter types to lists of inspiration ideas.
const Map<CounterType, List<String>> counterIdeas = {
  // ---------------------------------------------------------------------------
  // Black Counter Ideas
  // ---------------------------------------------------------------------------
  CounterType.black: [
    // --- VISUAL (Darkness, Coffee, Ink) ---

    // Coffee is black; fits the 'survival' theme of dark mornings.
    'Espresso shots to survive the morning',

    // Visual match + stereotype humor about developers loving black clothes.
    'Days I wore all black (developer uniform)',

    // Burnt food turns black; a relatable kitchen failure.
    'Slices of toast I accidentally burnt',

    // Ink is traditionally black; messy and chaotic situation.
    'Pens that exploded or leaked ink everywhere',

    // Dark chocolate is nearly black; specific food item.
    'Squares of 90% dark chocolate eaten',

    // Shadows are black; adds a bit of childhood imagination/fear.
    'Shadows that looked suspiciously like monsters',

    // Pitch black; fits the eco-friendly or money-saving theme.
    'Times I turned off the lights to save energy',

    // The night sky is black; fits a contemplative/stargazing mood.
    'Minutes spent staring into the night sky',

    // --- TECH & UI (Dark Mode, Terminal) ---

    // UI preference; "Dark Mode" uses black backgrounds.
    'Apps I immediately switched to Dark Mode',

    // The classic black terminal screen; plays on the "hacker" trope.
    'Terminal windows opened to look like a hacker',

    // Deleting is "voiding" or "blacking out" code; satisfying for devs.
    'Lines of code I deleted and felt good about',

    // Tech fact: On OLED screens, black means the pixel is off.
    'Pixels that are actually turned off (OLED)',

    // Tech failure; the modern version of BSOD or just a dead phone.
    'Times I rebooted a black screen of death',

    // Generic tech junk; cables are almost always black rubber.
    'Old cables found in a box somewhere',

    // The "Black Mirror" effect; seeing yourself when the screen goes dark.
    'Screens turned off to see my own reflection',

    // --- SYMBOLIC & METAPHORICAL (Mystery, Void, Silence) ---

    // Keeping things "in the dark" or hidden; metaphorically black.
    'Secrets I promised I would never tell',

    // Literal color + superstition/folklore element.
    'Black cats that crossed my path (bad luck?)',

    // Silence is often associated with darkness/void; absence of noise.
    'Moments of comfortable silence enjoyed',

    // Cultural association; Black Metal / Goth / Dark aesthetics.
    'Heavy metal songs played at full volume',

    // Metaphor for money disappearing into a void.
    'Black holes discovered in my monthly budget',

    // Villains traditionally wear black (Darth Vader, etc).
    'Movie villains I actually rooted for',
  ],

  // ---------------------------------------------------------------------------
  // White Counter Ideas
  // ---------------------------------------------------------------------------
  CounterType.white: [
    // --- VISUAL (Cleanliness, Paper, Snow) ---

    // The ultimate symbol of a fresh start (or writer's block).
    'Blank pages waiting to be filled',

    // The curse of wearing white; it attracts stains magnetically.
    'Clean shirts I immediately spilled coffee on',

    // Classic white objects in nature; encourages looking up.
    'Clouds spotted in the sky today',

    // Literal white precipitation; a seasonal joy.
    'Snowflakes caught on my tongue (seasonal)',

    // A clean white ceramic plate implies a good meal was finished.
    'Empty plates after a delicious meal',

    // White paper waste; represents frustration or a bad idea.
    'Pieces of paper crumpled into balls',

    // Vanilla is the standard 'white' flavor; simple and sweet.
    'Vanilla ice cream cones eaten',

    // Generic white bathroom fluff; their actual purpose is a mystery.
    'Cotton balls used for... something',

    // --- TECH & UI (Whitespace, Empty States) ---

    // Developer humor; 'white' space is crucial for clean code.
    'Whitespace I added to make code readable',

    // UI term; emptiness often means nothing has loaded yet.
    'Empty states I encountered in apps',

    // Technical definition; RGB(255,255,255) is full brightness.
    'Pixels that are shining at full brightness',

    // The dreaded white screen; usually means loading or broken.
    'Times I refreshed a blank page',

    // A visual void; searching for something that doesn't exist.
    'Search results that came back with nothing',

    // Fresh printer paper is the gold standard for 'white'.
    'Documents printed on fresh paper',

    // --- SYMBOLIC & METAPHORICAL (Peace, Truth, New Beginnings) ---

    // Idiom containing the color; harmless little untruths.
    'White lies I told to be polite',

    // White often symbolizes peace (white noise, white flag).
    'Moments of absolute peace and quiet',

    // White represents purity and truth; keeping your word.
    'Promises I actually managed to keep',

    // Waving the white flag; giving up to end a conflict quickly.
    'Times I surrendered an argument to save time',

    // The classic sleep hack; counting fluffy white animals.
    'Sheep counted to fall asleep',

    // Tabula rasa; the 'clean slate' metaphor.
    'Fresh starts and new beginnings',

    // Fluffy, sugary, and very white treats.
    'Marshmallows eaten by the handful',

    // Classic sheet ghosts are white; spooky but playful.
    'Ghosts I suspected were haunting me',
  ],

  // ---------------------------------------------------------------------------
  // Red Counter Ideas
  // ---------------------------------------------------------------------------
  CounterType.red: [
    // --- VISUAL (Literally Red) ---

    // Stereotypically the fastest color for cars; visual match.
    'Red cars that were definitely speeding',

    // A standard red ingredient; simple visual counting.
    'Tomatoes sliced for a sandwich',

    // Red peppers; counting both the item and the regret/heat.
    'Spicy chili peppers I dared to eat',

    // The classic red fruit; counting health choices.
    'Apples eaten to keep the doctor away',

    // Simple observational counting game for a common color.
    'People wearing a red shirt today',

    // Classic red flower; counting moments of stopping to appreciate life.
    'Roses I stopped to smell',

    // Red clay bricks; the ultimate "boredom" counter if you are stuck.
    'Bricks in the wall (if you are extremely bored)',

    // Visual match; counting slices implies a good meal.
    'Slices of pepperoni pizza',

    // Visual match; tracking relaxation (or excess).
    'Glasses of red wine consumed',

    // --- UI & TECH (Red in Interfaces) ---

    // Error messages and bug reports are universally highlighted in red.
    'Bugs found in production code',

    // The universal panic color for low power (<15%).
    'Times the battery icon turned red',

    // The brand logo is iconic red; tracking procrastination time.
    'YouTube videos watched instead of working',

    // High severity logs are always red; cheeky developer humor.
    'Critical errors I pretended I didn\'t see',

    // High priority flags or exclamation marks are usually red.
    'Urgent emails marked "High Priority"',

    // The physical device/strobe light is often red; loud and annoying.
    'False alarms from the smoke detector',

    // --- SYMBOLIC & EMOTIONAL (Metaphors) ---

    // The universal red octagon; tracking driving compliance.
    'Stop signs that I actually stopped for',

    // "No", "Cancel", and "Stop" buttons are standard red in UI design.
    'Times I successfully said "No"',

    // The classic idiom for warning signs in people or situations.
    'Red flags I ignored in a conversation',

    // Physiological reaction; the face literally turns red.
    'Times I blushed from embarrassment',

    // The idiom "Seeing Red" represents anger; tracking frustration.
    'Moments I felt actual "road rage"',
  ],

  // ---------------------------------------------------------------------------
  // Green Counter Ideas
  // ---------------------------------------------------------------------------
  CounterType.green: [
    // --- VISUAL (Nature, Money, Food) ---

    // US Dollar bills are green; tracking financial discipline.
    'Dollars saved by skipping the coffee shop',

    // Most vegetables are green; tracking healthy eating habits.
    'Vegetables I forced myself to eat for health',

    // Plants are green; simple nature maintenance tracking.
    'Plants I actually remembered to water today',

    // Traffic signals; tracking luck or smooth commutes.
    'Green lights I caught without hitting the brakes',

    // Salads are predominantly green leaves; health tracking.
    'Fresh salads consumed instead of pizza',

    // Nature walk; trees are the primary source of green outdoors.
    'Trees passed on my daily walk',

    // The ultimate green symbol of luck; a rare find.
    'Lucky four-leaf clovers found in the grass',

    // Stereotypical green animal; fun nature observation.
    'Frogs spotted (rare, but possible!)',

    // --- TECH & UI (Success, Battery, Online) ---

    // In IDEs, passing tests usually show a green bar or tick.
    'Unit tests that passed on the first try',

    // High battery levels (>20%) are displayed in green.
    'Times the battery icon was actually fully green',

    // "Green build" is standard dev terminology for success.
    'Successful builds that didn\'t throw errors',

    // Hardware LEDs; green indicates "Ready" or "Normal".
    'Status lights that are finally showing green',

    // The universal recycling logo and bins are green.
    'Recycling items I sorted correctly',

    // Online status indicators are almost always green dots.
    'Friends who are currently "Online"',

    // --- SYMBOLIC & METAPHORICAL (Go, Envy, Luck) ---

    // Green signal means "Go" or "Affirmative".
    'Times I said "Yes" to a new opportunity',

    // Green checks symbolize correctness or validation.
    'Good decisions I made (and felt proud of)',

    // The classic idiom "Green with envy"; emotional tracking.
    'Moments of envy (green with envy)',

    // "Going Green" is the metaphor for eco-conscious actions.
    'Eco-friendly choices I made today',

    // Task completion is often marked with a green checkmark.
    'Tasks completed on my To-Do list',

    // Green represents vitality, health, and freshness.
    'Times I felt fresh and energetic',

    // Fitness apps often use green rings/bars for movement.
    'Steps taken (count x100 for this one)',
  ],

  // ---------------------------------------------------------------------------
  // Yellow Counter Ideas
  // ---------------------------------------------------------------------------
  CounterType.yellow: [
    // --- VISUAL (Sun, Food, Nature) ---

    // The most iconic yellow fruit; fits the health tracking theme.
    'Bananas eaten for that extra potassium',

    // Lemons are yellow; the metaphor is "when life gives you lemons".
    'Lemons squeezed to make lemonade',

    // Classic office supply; usually standard canary yellow.
    'Post-it notes stuck to my monitor',

    // Yellow is a rare car color; refers to the "Punch Buggy" game.
    'Yellow cars spotted (Punch Buggy!)',

    // Both insects are black and yellow stripes; hazard avoidance.
    'Bees or wasps I successfully dodged',

    // The sun is depicted as yellow; tracking Vitamin D or outdoor time.
    'Minutes of direct sunlight enjoyed (x10)',

    // Dandelion flowers are yellow before turning to white seeds.
    'Dandelions blown into the wind',

    // Rubber ducks are yellow; "Rubber Duck Debugging" is a dev classic.
    'Rubber ducks I explained my code to',

    // --- TECH & UI (Warnings, Highlights) ---

    // Warning logs in consoles are typically yellow/orange.
    'Console warnings I decided to ignore',

    // Highlighters are traditionally fluorescent yellow.
    'Lines of text I highlighted in a book',

    // Weak/Fair WiFi signals are often displayed as yellow bars.
    'Slow internet connections (yellow signal bars)',

    // Default folder icons in Windows/Mac are yellow.
    'Folders created on my desktop',

    // Digital highlighting tools usually default to yellow.
    'Times I used the highlighter tool',

    // Physical caution signs (wet floor, etc.) are yellow.
    'Caution signs I actually paid attention to',

    // --- SYMBOLIC & METAPHORICAL (Ideas, Joy, Optimism) ---

    // Lightbulbs (ideas) are depicted as glowing yellow.
    'Bright ideas that popped into my head',

    // Smiley faces are yellow; tracking general happiness.
    'Times I genuinely smiled today',

    // Stars are drawn as yellow; reward system metaphor.
    'Gold stars I mentally awarded myself',

    // Laughter and joy are associated with warm yellow colors.
    'Laughs shared with good friends',

    // Yellow color psychology represents optimism and energy.
    'Moments of pure optimism',

    // A high-energy, positive social interaction.
    'High-fives given or received',

    // Idiom for someone who brings happiness/light (yellow).
    'Times I felt like a "ray of sunshine"',
  ],

  // ---------------------------------------------------------------------------
  // Blue Counter Ideas
  // ---------------------------------------------------------------------------
  CounterType.blue: [
    // --- VISUAL (Water, Sky, Cold) ---

    // Water is universally depicted as blue; tracks hydration.
    'Glasses of water I actually drank today',

    // The sky is blue; encourages looking up/nature.
    'Clouds in the sky that looked like animals',

    // Denim blue is a standard; simple observational counting.
    'People I saw wearing blue jeans',

    // Literally blue fruit; fun, specific food item.
    'Blueberries eaten (one by one)',

    // Most standard ballpoint pens are blue; relatable annoyance.
    'Pens that ran out of blue ink at the worst time',

    // Ice/Cold is visually coded as blue; drink enhancement.
    'Ice cubes added to keep things cool',

    // The sky is the biggest blue thing; tracking mindfulness.
    'Times I looked up at the sky',

    // --- TECH & UI (BSOD, Links, Notifications) ---

    // The classic Windows crash screen is blue; tech humor.
    'Blue screens of death (BSOD) encountered',

    // Unread markers/dots are often blue (iOS/Android).
    'Unread notifications I finally cleared',

    // Default web links are blue; tracking internet rabbit holes.
    'Hyperlinks clicked down a Wikipedia rabbit hole',

    // "Cold" calls/emails align with blue color temp; sales/work.
    'Cold emails sent to strangers',

    // The Bluetooth logo and light are blue; connection tracking.
    'Bluetooth devices that actually connected',

    // Facebook/Twitter/LinkedIn are all blue; annoyance tracking.
    'Social media posts that annoyed me',

    // Windows progress bars are often green or blue; waiting time.
    'Progress bars that seem stuck',

    // --- SYMBOLIC & METAPHORICAL (Calm, Sadness, Trust) ---

    // Blue is the color of calm/breathing apps.
    'Deep breaths taken to find my center',

    // Silence feels "cool" or blue; absence of noise/heat.
    'Moments of comfortable silence',

    // "Feeling blue" is the idiom for sadness.
    'Times I felt a little "blue" (it happens)',

    // The Blues genre; sad music tracking.
    'Sad songs I listened to on repeat',

    // Cookie Monster is iconic blue fur; pop culture reference.
    'Cookie Monster references made',

    // Ocean/Beach water is blue; escapism.
    'Times I wished I was at the beach',

    // "True Blue" means loyal/trustworthy.
    'Promises made (true blue)',
  ],

  // ---------------------------------------------------------------------------
  // Brown Counter Ideas
  // ---------------------------------------------------------------------------
  CounterType.brown: [
    // --- VISUAL (Coffee, Chocolate, Nature) ---

    // Coffee liquid and beans are brown; essential developer fuel.
    'Cups of coffee consumed to stay human',

    // Cardboard is standard brown; tracking online shopping habits.
    'Cardboard boxes from deliveries piling up',

    // Chocolate is brown; specific energy tracking.
    'Squares of chocolate eaten (strictly for energy)',

    // Mud is brown; tracking successful navigation of rainy days.
    'Muddy puddles I successfully avoided',

    // Dead/dry leaves turn brown; satisfying sensory counting.
    'Dead leaves I stepped on just for the crunch',

    // Wood is naturally brown; tracking clumsiness.
    'Wooden furniture I bumped my toe on',

    // Toast turns brown when cooked; breakfast tracking.
    'Slices of toast consumed for breakfast',

    // Squirrels are often brown/grey; nature observation.
    'Squirrels spotted running up a tree',

    // --- TECH & UI (Sepia, Legacy, Rust) ---

    // Sepia is a reddish-brown tone; retro aesthetic tracking.
    'Sepia filters used to make photos look "vintage"',

    // Rust is reddish-brown; cleaning up old tech.
    'Rusty old gadgets found in a drawer',

    // "Dirty" implies mud/soil (brown); quick fixes in code.
    'Dirty hacks I used to fix a bug quickly',

    // Dust is grey/brown; metaphor for old, untouched code.
    'Legacy code that feels a bit "dusty"',

    // Kraft paper is brown; eco-friendly tracking.
    'Paper bags used to carry things',

    // --- SYMBOLIC & METAPHORICAL (Earth, Boredom, Points) ---

    // Idiom explicitly containing "Brownie"; doing good deeds.
    'Brownie points I earned today',

    // Earth/Soil is brown; feeling stable and connected.
    'Times I felt "grounded" and calm',

    // "Sticky" often implies mud or mess (brown).
    'Sticky situations I managed to get out of',

    // Brown is color psychology for dull/drab; boring work.
    'Boring tasks I had to slog through',

    // Dirt/Mess is brown; fixing chaotic situations.
    'Messy problems I cleaned up',

    // Wood is brown; superstitious tracking for luck.
    'Times I decided to "knock on wood"',
  ],

  // ---------------------------------------------------------------------------
  // Purple Counter Ideas
  // ---------------------------------------------------------------------------
  CounterType.purple: [
    // --- VISUAL (Fruits, Flowers, Nature) ---

    // Grapes are purple; nature's snack tracking.
    'Grapes eaten one by one (nature\'s candy)',

    // Twilight creates violet hues; observing nature.
    'Sunsets that turned a beautiful shade of violet',

    // Lavender is the iconic purple herb; scent tracking.
    'Lavender scents I stopped to enjoy',

    // The quintessential purple vegetable; cooking challenge.
    'Eggplants used in a recipe today',

    // Skin turns purple/blue upon impact; clumsiness tracker.
    'Bruises I got from bumping into furniture',

    // Violets are literally purple; floral spotting.
    'Violets or other purple flowers spotted',

    // Nebulas are often depicted as purple space clouds.
    'Galaxy wallpapers I set on my phone',

    // --- TECH & UI (Links, Incognito, Gaming) ---

    // Standard browser behavior: visited links turn purple.
    'Links I clicked that turned purple (visited)',

    // Chrome Incognito mode uses a purple theme; "Privacy".
    'Incognito tabs opened for... research',

    // Many IDE themes make keywords like 'import' purple.
    'Syntax highlighting keywords in my code',

    // In RPGs, Epic rarity items are universally purple.
    'Epic or Legendary loot drops found in games',

    // User customization; choosing the royal color.
    'Times I used a purple theme in an app',

    // --- SYMBOLIC & METAPHORICAL (Royalty, Magic, Mystery) ---

    // Purple is historically the color of royalty.
    'Times I felt like absolute royalty',

    // Purple is the color of magic/mana in fantasy.
    'Moments that felt completely magical',

    // Purple represents imagination and creativity.
    'Creative bursts that came out of nowhere',

    // "Purple Rain"; paying homage to the Artist.
    'Songs by Prince played on repeat',

    // Purple is associated with the subconscious mind.
    'Dreams I actually remembered after waking up',

    // Mystery and the unknown are often color-coded purple.
    'Unusual coincidences that felt mysterious',

    // "Magic" behavior in code; developer jargon.
    'Times I used the word "automagically"',

    // Purple represents wisdom and spirituality.
    'Deep thoughts I had in the shower',
  ],

  // ---------------------------------------------------------------------------
  // Pink Counter Ideas
  // ---------------------------------------------------------------------------
  CounterType.pink: [
    // --- VISUAL (Sweet, Nature, Bright) ---

    // Bubblegum is iconically pink; tracking a fun, childish habit.
    'Bubblegum bubbles blown and popped loudly',

    // The classic cartoon donut (Simpsons style) is pink.
    'Donuts with pink frosting I couldn\'t resist',

    // Pink skies are distinct and beautiful; nature appreciation.
    'Sunsets that looked like cotton candy',

    // The defining pink bird; kitschy lawn decor spotting.
    'Plastic flamingos spotted in front yards',

    // Standard school erasers are pink; tracking corrections.
    'Erasers used to fix my mistakes on paper',

    // Skin turns pink/red; health tracking (and a reminder!).
    'Times I got sunburned (wear sunscreen!)',

    // Traditionally pink pigs; saving money count.
    'Piggy banks filled with spare change',

    // Iconic pink flowers; capturing an anime aesthetic.
    'Cherry blossoms seen falling (anime style)',

    // --- TECH & UI (Hearts, Glitches) ---

    // "Like" buttons/hearts are often pink or red.
    'Hearts I tapped on social media posts',

    // In 3D engines, missing textures default to bright magenta/pink.
    'Missing textures (magenta) in games',

    // Hot pink is a classic neon color; urban exploration.
    'Neon signs that caught my attention',

    // Beauty filters often add a pinkish glow or blush.
    'Filters used to make selfies look "cute"',

    // Light themes are often softer/pinker than dark mode.
    'Times I picked the "light" theme (rare!)',

    // --- SYMBOLIC & METAPHORICAL (Love, Optimism, Pop Culture) ---

    // The idiom for optimism literally references pink.
    'Looking at life through rose-colored glasses',

    // Pop culture rule: "On Wednesdays we wear pink".
    'Wednesdays I wore pink (Mean Girls)',

    // Idiom: "Tickled pink" means delighted.
    'Moments I was "tickled pink" by a joke',

    // Sweetness/Candy is often color-coded pink.
    'Sweet things I treated myself to today',

    // The classic cartoon character theme song.
    'Pink Panther theme songs hummed',

    // Genre branding is often pink; guilty pleasure tracking.
    'Romantic comedies I watched secretly',

    // Fantasy creatures often depicted with pink magic/manes.
    'Unicorns I... wait, do unicorns exist?',

    // Body part name + promise; a serious bond.
    'Promises made on a pinky swear',
  ],

  // ---------------------------------------------------------------------------
  // Orange Counter Ideas
  // ---------------------------------------------------------------------------
  CounterType.orange: [
    // --- VISUAL (Fruit, Sunset, Construction) ---

    // The literal fruit; tracking a sticky manual skill.
    'Oranges peeled without making a sticky mess',

    // Safety gear is orange; observational humor about roadworks.
    'Traffic cones I saw protecting absolutely nothing',

    // Orange vegetable; tracking health myths/vision.
    'Carrots eaten to improve my night vision',

    // Nature's orange palette; appreciation of beauty.
    'Sunsets that looked like a watercolor painting',

    // Cheetos/Doritos dust is iconic orange; snack tracking.
    'Cheesy snacks that stained my fingers orange',

    // Seasonal orange gourd; Halloween fun.
    'Pumpkins carved into scary faces',

    // Basketballs are orange; tracking athletic failures.
    'Basketball shots I missed entirely (airballs)',

    // "Orange" tabbies are famous for being silly/judged.
    'Ginger cats that judged me silently',

    // Fanta/Crush soda is chemically bright orange.
    'Sodas consumed that were chemically orange',

    // --- TECH & UI (Stack Overflow, Updates) ---

    // The Stack Overflow logo is orange; essential dev tool.
    'Stack Overflow answers I copied and pasted',

    // Windows/System update screens often use warning colors.
    'Updates installing screens (don\'t turn off power!)',

    // The standard RSS feed icon is orange; retro tech.
    'RSS feeds I still subscribe to (old school)',

    // Dashboard check engine/warning lights are amber/orange.
    'Warning lights that I hope will just go away',

    // Some apps use orange for "medium priority" alerts.
    'Notifications that weren\'t red (yet)',

    // --- SYMBOLIC & METAPHORICAL (Energy, Humor) ---

    // Reference to the "Orange you glad I didn't say banana" joke.
    'Times I was glad I didn\'t say "banana"',

    // High-visibility vests and signs are orange.
    'Construction zones I had to walk around',

    // Color psychology: Orange represents energy/enthusiasm.
    'Moments of sudden energy and enthusiasm',

    // Tigers are orange; nature/zoo spotting.
    'Tiger stripes spotted (at the zoo, hopefully)',

    // Fire is orange; metaphor for handling urgent crises.
    'Fires I had to put out at work (metaphorically)',

    // Classic breakfast drink; hydration tracking.
    'Orange juice glasses consumed with breakfast',
  ],

  // ---------------------------------------------------------------------------
  // Gray Counter Ideas
  // ---------------------------------------------------------------------------
  CounterType.gray: [
    // --- VISUAL (Weather, City, Nature) ---

    // Gray sky and mood; tracking days spent indoors avoiding the wet.
    'Rainy days where I just stayed inside',

    // City birds are predominantly gray; observing urban wildlife.
    'Pigeons that refused to move out of my way',

    // Literal color match; tracking aging with a bit of humor.
    'Gray hairs found ("wisdom highlights")',

    // Concrete is gray; playing the childhood superstition game.
    'Sidewalk cracks I carefully avoided stepping on',

    // The classic developer wardrobe staple; 50 shades of gray.
    'T-shirts in slightly different gray shades',

    // Stones are usually gray; tracking an aimless walking habit.
    'Rocks I kicked while walking down the street',

    // Dust accumulation is gray; tracking cleaning procrastination.
    'Dust bunnies accumulating under my desk',

    // Overcast skies are gray; weather tracking without the rain.
    'Clouds that looked gloomy but didn\'t rain',

    // --- TECH & UI (Disabled, Hardware, Loading) ---

    // Disabled UI elements are standard gray; user frustration.
    'Furiously clicking disabled buttons',

    // Shimmering placeholders are gray blocks; waiting for data.
    'Loading skeletons that never finished',

    // Aluminum or plastic tech casing; everyday carry items.
    'Silver or gray gadgets I carry around daily',

    // The design stage is often monochrome/gray; planning phase.
    'Wireframes I drew before writing any code',

    // Dust accumulation turns cables gray over time.
    'Old cables that turned gray from dust',

    // --- SYMBOLIC & METAPHORICAL (Boredom, Ambiguity, Neutrality) ---

    // Dull, drab, colorless experience; tracking corporate boredom.
    'Meetings that could have been an email',

    // The idiom's animal is gray; ignoring big issues.
    'Elephants in the room nobody mentioned',

    // The "Gray area" idiom; tracking ambiguity or ethical fuzziness.
    'Situations that were a bit of a "gray area"',

    // Gray is the color of neutrality and indifference.
    'Times I felt completely neutral about a decision',

    // Blending into the background; non-distinct color metaphor.
    'Background actors in the movie of my life',

    // Lack of clarity/color; a washed-out memory.
    'Days that felt like a "blur" (grayed out)',

    // Gray is the color of compromise (black + white mixed).
    'Times I compromised to keep the peace',
  ],
};
