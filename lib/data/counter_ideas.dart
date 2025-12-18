// Copyright 2020-2025 The Hello World Writer. All rights reserved.
// https://www.thehelloworldwriter.com
//
// Use of this source code is governed by an MIT-style license
// that can be found in the LICENSE file.

import '../models/counter.dart';

const Map<CounterType, List<String>> counterIdeas = {
  CounterType.black: [
    // --- VISUAL (Darkness, Coffee, Ink) ---
    'Espresso shots consumed to survive the morning',
    'Days I wore an all-black outfit (developer uniform)',
    'Slices of toast I accidentally burnt',
    'Pens that exploded or leaked ink everywhere',
    'Squares of 90% dark chocolate eaten',
    'Shadows that looked suspiciously like monsters',
    'Times I turned off the lights to save energy',
    'Minutes spent staring into the night sky',

    // --- TECH & UI (Dark Mode, Terminal) ---
    'Apps I immediately switched to Dark Mode',
    'Terminal windows opened to look like a hacker',
    'Lines of code I deleted and felt good about',
    'Pixels that are actually turned off (OLED)',
    'Times I rebooted a black screen of death',
    'Old cables found in a box somewhere',
    'Screens turned off to see my own reflection',

    // --- SYMBOLIC & METAPHORICAL (Mystery, Void, Silence) ---
    'Secrets I promised I would never tell',
    'Black cats that crossed my path (bad luck?)',
    'Moments of comfortable silence enjoyed',
    'Heavy metal songs played at full volume',
    'Black holes discovered in my monthly budget',
    'Movie villains I actually rooted for',
  ],
  CounterType.white: [
    // --- VISUAL (Cleanliness, Paper, Snow) ---
    'Blank pages waiting to be filled',
    'Clean shirts I immediately spilled coffee on',
    'Clouds spotted in the sky today',
    'Snowflakes caught on my tongue (seasonal)',
    'Empty plates after a delicious meal',
    'Pieces of paper crumpled into balls',
    'Vanilla ice cream cones eaten',
    'Cotton balls used for... something',

    // --- TECH & UI (Whitespace, Empty States) ---
    'Whitespace I added to make code readable',
    'Empty states I encountered in apps',
    'Pixels that are shining at full brightness',
    'Times I refreshed a blank page',
    'Search results that came back with nothing',
    'Documents printed on fresh paper',

    // --- SYMBOLIC & METAPHORICAL (Peace, Truth, New Beginnings) ---
    'White lies I told to be polite',
    'Moments of absolute peace and quiet',
    'Promises I actually managed to keep',
    'Times I surrendered an argument to save time',
    'Sheep counted to fall asleep',
    'Fresh starts and new beginnings',
    'Marshmallows eaten by the handful',
    'Ghosts I suspected were haunting me',
  ],
  CounterType.red: [
    // --- VISUAL (Literally Red) ---
    'Red cars that were definitely speeding',
    'Tomatoes sliced for a sandwich',
    'Spicy chili peppers I dared to eat',
    'Apples eaten to keep the doctor away',
    'People wearing a red shirt today',
    'Roses I stopped to smell',
    'Bricks in the wall (if you are extremely bored)',
    'Slices of pepperoni pizza',
    'Glasses of red wine consumed',
    // --- UI & TECH (Red in Interfaces) ---
    'Bugs found in production code', // Errors are red
    'Times the battery icon turned red', // Low battery
    'YouTube videos watched instead of working', // Logo is red
    'Critical errors I pretended I didn\'t see',
    'Urgent emails marked "High Priority"', // Usually red exclamation mark
    'False alarms from the smoke detector', // Device is red
    // --- SYMBOLIC & EMOTIONAL (Metaphors) ---
    'Stop signs that I actually stopped for', // Stop = Red
    'Times I successfully said "No"', // Cancel/No buttons are red
    'Red flags I ignored in a conversation', // The idiom
    'Times I blushed from embarrassment', // Turning red
    'Moments I felt actual "road rage"', // Seeing red/Anger
  ],
  CounterType.green: [
    // --- VISUAL (Nature, Money, Food) ---
    'Dollars saved by skipping the coffee shop',
    'Vegetables I forced myself to eat for health',
    'Plants I actually remembered to water today',
    'Green lights I caught without hitting the brakes',
    'Fresh salads consumed instead of pizza',
    'Trees passed on my daily walk',
    'Lucky four-leaf clovers found in the grass',
    'Frogs spotted (rare, but possible!)',

    // --- TECH & UI (Success, Battery, Online) ---
    'Unit tests that passed on the first try',
    'Times the battery icon was actually fully green',
    'Successful builds that didn\'t throw errors',
    'Status lights that are finally showing green',
    'Recycling items I sorted correctly',
    'Friends who are currently "Online"',

    // --- SYMBOLIC & METAPHORICAL (Go, Envy, Luck) ---
    'Times I said "Yes" to a new opportunity',
    'Good decisions I made (and felt proud of)',
    'Moments of envy (green with envy)',
    'Eco-friendly choices I made today',
    'Tasks completed on my To-Do list',
    'Times I felt fresh and energetic',
    'Steps taken (count x100 for this one)',
  ],
  CounterType.yellow: [
    // --- VISUAL (Sun, Food, Nature) ---
    'Bananas eaten for that extra potassium',
    'Lemons squeezed to make lemonade (metaphorically?)',
    'Post-it notes stuck to my monitor',
    'Yellow cars spotted (Punch Buggy!)',
    'Bees or wasps I successfully dodged',
    'Minutes of direct sunlight enjoyed (x10)',
    'Dandelions blown into the wind',
    'Rubber ducks I explained my code to',

    // --- TECH & UI (Warnings, Highlights) ---
    'Console warnings I decided to ignore',
    'Lines of text I highlighted in a book',
    'Slow internet connections (yellow signal bars)',
    'Folders created on my desktop',
    'Times I used the highlighter tool',
    'Caution signs I actually paid attention to',

    // --- SYMBOLIC & METAPHORICAL (Ideas, Joy, Optimism) ---
    'Bright ideas that popped into my head',
    'Times I genuinely smiled today',
    'Gold stars I mentally awarded myself',
    'Laughs shared with good friends',
    'Moments of pure optimism',
    'High-fives given or received',
    'Times I felt like a "ray of sunshine"',
  ],
  CounterType.blue: [
    // --- VISUAL (Water, Sky, Cold) ---
    'Glasses of water I actually drank today',
    'Clouds in the sky that looked like animals',
    'People I saw wearing blue jeans',
    'Blueberries eaten (one by one)',
    'Pens that ran out of blue ink at the worst time',
    'Ice cubes added to keep things cool',
    'Times I looked up at the sky',

    // --- TECH & UI (BSOD, Links, Notifications) ---
    'Blue screens of death (BSOD) encountered',
    'Unread notifications I finally cleared',
    'Hyperlinks clicked down a Wikipedia rabbit hole',
    'Cold emails sent to strangers',
    'Bluetooth devices that actually connected',
    'Social media posts that annoyed me',
    'Progress bars that seem stuck',

    // --- SYMBOLIC & METAPHORICAL (Calm, Sadness, Trust) ---
    'Deep breaths taken to find my center',
    'Moments of comfortable silence',
    'Times I felt a little "blue" (it happens)',
    'Sad songs I listened to on repeat',
    'Cookie Monster references made',
    'Times I wished I was at the beach',
    'Promises made (true blue)',
  ],
  CounterType.brown: [
    // --- VISUAL (Coffee, Chocolate, Nature) ---
    'Cups of coffee consumed to stay human',
    'Cardboard boxes from deliveries piling up',
    'Squares of chocolate eaten (strictly for energy)',
    'Muddy puddles I successfully avoided',
    'Dead leaves I stepped on just for the crunch',
    'Wooden furniture I bumped my toe on',
    'Slices of toast consumed for breakfast',
    'Squirrels spotted running up a tree',

    // --- TECH & UI (Sepia, Legacy, Rust) ---
    'Sepia filters used to make photos look "vintage"',
    'Rusty old gadgets found in a drawer',
    'Dirty hacks I used to fix a bug quickly',
    'Legacy code that feels a bit "dusty"',
    'Paper bags used to carry things',

    // --- SYMBOLIC & METAPHORICAL (Earth, Boredom, Points) ---
    'Brownie points I earned today',
    'Times I felt "grounded" and calm',
    'Sticky situations I managed to get out of',
    'Boring tasks I had to slog through',
    'Messy problems I cleaned up',
    'Times I decided to "knock on wood"',
  ],
  CounterType.purple: [
    // --- VISUAL (Fruits, Flowers, Nature) ---
    'Grapes eaten one by one (nature\'s candy)',
    'Sunsets that turned a beautiful shade of violet',
    'Lavender scents I stopped to enjoy',
    'Eggplants used in a recipe today',
    'Bruises I got from bumping into furniture',
    'Violets or other purple flowers spotted',
    'Galaxy wallpapers I set on my phone',

    // --- TECH & UI (Links, Incognito, Gaming) ---
    'Links I clicked that turned purple (visited)',
    'Incognito tabs opened for... research',
    'Syntax highlighting keywords in my code',
    'Epic or Legendary loot drops found in games',
    'Times I used a purple theme in an app',

    // --- SYMBOLIC & METAPHORICAL (Royalty, Magic, Mystery) ---
    'Times I felt like absolute royalty',
    'Moments that felt completely magical',
    'Creative bursts that came out of nowhere',
    'Songs by Prince played on repeat',
    'Dreams I actually remembered after waking up',
    'Unusual coincidences that felt mysterious',
    'Times I used the word "automagically"',
    'Deep thoughts I had in the shower',
  ],
  CounterType.pink: [
    // --- VISUAL (Sweet, Nature, Bright) ---
    'Bubblegum bubbles blown and popped loudly',
    'Donuts with pink frosting I couldn\'t resist',
    'Sunsets that looked like cotton candy',
    'Plastic flamingos spotted in front yards',
    'Erasers used to fix my mistakes on paper',
    'Times I got slightly sunburned (wear sunscreen!)',
    'Piggy banks filled with spare change',
    'Cherry blossoms seen falling (anime style)',

    // --- TECH & UI (Hearts, Glitches) ---
    'Hearts I tapped on social media posts',
    'Missing textures (magenta) found in video games',
    'Neon signs that caught my attention',
    'Filters used to make selfies look "cute"',
    'Times I picked the "light" theme (rare!)',

    // --- SYMBOLIC & METAPHORICAL (Love, Optimism, Pop Culture) ---
    'Times I looked at life through rose-colored glasses',
    'Wednesdays I remembered to wear pink (Mean Girls)',
    'Moments I was "tickled pink" by a joke',
    'Sweet things I treated myself to today',
    'Pink Panther theme songs hummed',
    'Romantic comedies I watched secretly',
    'Unicorns I... wait, do unicorns exist?',
    'Promises made on a pinky swear',
  ],
  CounterType.orange: [
    // --- VISUAL (Fruit, Sunset, Construction) ---
    'Oranges peeled without making a sticky mess',
    'Traffic cones I saw protecting absolutely nothing',
    'Carrots eaten to improve my night vision',
    'Sunsets that looked like a watercolor painting',
    'Cheesy snacks that stained my fingers orange',
    'Pumpkins carved into scary faces',
    'Basketball shots I missed entirely (airballs)',
    'Ginger cats that judged me silently',
    'Sodas consumed that were chemically orange',

    // --- TECH & UI (Stack Overflow, Updates) ---
    'Stack Overflow answers I copied and pasted',
    'Updates installing screens (don\'t turn off power!)',
    'RSS feeds I still subscribe to (old school)',
    'Warning lights that I hope will just go away',
    'Notifications that weren\'t red (yet)',

    // --- SYMBOLIC & METAPHORICAL (Energy, Humor) ---
    'Times I was glad I didn\'t say "banana"',
    'Construction zones I had to walk around',
    'Moments of sudden energy and enthusiasm',
    'Tiger stripes spotted (at the zoo, hopefully)',
    'Fires I had to put out at work (metaphorically)',
    'Orange juice glasses consumed with breakfast',
  ],
  CounterType.grey: [
    // --- VISUAL (Weather, City, Nature) ---
    'Rainy days where I just stayed inside',
    'Pigeons that refused to move out of my way',
    'Gray hairs found (I call them "wisdom highlights")',
    'Sidewalk cracks I carefully avoided stepping on',
    'T-shirts I own that are slightly different shades of gray',
    'Rocks I kicked while walking down the street',
    'Dust bunnies accumulating under my desk',
    'Clouds that looked gloomy but didn\'t rain',

    // --- TECH & UI (Disabled, Hardware, Loading) ---
    'Buttons I furiously clicked that were actually disabled',
    'Loading skeletons that never turned into real content',
    'Silver or gray gadgets I carry around daily',
    'Wireframes I drew before writing any code',
    'Old cables that turned gray from dust',

    // --- SYMBOLIC & METAPHORICAL (Boredom, Ambiguity, Neutrality) ---
    'Meetings that definitely could have been an email',
    'Elephants in the room that nobody wanted to mention',
    'Situations that were a bit of a "gray area"',
    'Times I felt completely neutral about a decision',
    'Background actors in the movie of my life',
    'Days that felt like a "blur" (grayed out)',
    'Times I compromised to keep the peace',
  ],
};
