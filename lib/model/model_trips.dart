//Trip
class Trip {
  String? nametour;
  String? owner;
  String? promotionalword;
  String? imageUrl;
  String? periodh;
  String? periodm;
  String? groupsize;
  String? tickettype;
  String? language;
  String? pros;
  String? importantinformation;
  double? price;
  double like;
  String? city;
  String? country;
  String? type;

  Trip({
    this.nametour,
    this.owner,
    this.promotionalword,
    this.imageUrl,
    this.periodh,
    this.periodm,
    this.groupsize,
    this.tickettype,
    this.language,
    this.pros,
    this.importantinformation,
    this.price,
    required this.like,
    this.city,
    this.country,
    this.type,
  });

  //Json Convertor
  //--
}

List<Trip> listThingToDo = [
  Trip(
    nametour:
        'Amsterdam Open Boat Canal Cruise - Live Guide - from Anne Frank House',
    owner: 'Flagship Amsterdam',
    promotionalword:
        'Experience the beauty of Amsterdam’s canals by going on this scenic cruise. Pass by Anne Frank House, the Jordaan, the Houseboat Museum, Leiden Square, Rijksmuseum, De Duif and much more.',
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/0d/09/b0/ad.jpg',
    periodh: '1',
    periodm: '0',
    groupsize: '30',
    tickettype: 'Mobile Phone',
    language: 'English',
    pros:
        'Save time—tick off multiple top Amsterdam landmarks in a day, Travel in an eco-friendly way—the boat has an electric engine, Flexible tour—choose from a variety of daily start times',
    importantinformation:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget commodo mi, non bibendum massa. Cras quis sollicitudin felis, nec tristique purus. Cras sed justo consectetur, commodo arcu in, aliquet lacus.',
    price: 19.99,
    like: 5,
    city: 'Amsterdam',
    country: 'Netherlands',
    type: 'tour',
  ),
  Trip(
    nametour: 'Cappadocia Balloon Ride and Champagne Breakfast',
    owner: 'Royal Balloon',
    promotionalword:
        'Rising from the plains of Anatolia, Cappadocia is an ancient, fairytale landscape famous for its honeycombed underground cities and towering, chimney-shaped rocks. Get a bird’s-eye view of the unforgettable scenery from the region’s best vantage point: by hot-air balloon. You also enjoy a breakfast buffet.',
    imageUrl:
        'https://images.unsplash.com/photo-1631152282084-b8f1b380ccab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTB8fGJhbGxvbiUyMGNhcHBhZG9jaWF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    periodh: '3',
    periodm: '30',
    groupsize: '9',
    tickettype: 'Mobile Phone',
    language: 'English',
    pros:
        'A hot-air balloon ride over Cappadocia, with breakfast, Enjoy round-trip hotel pickup and drop-off, Champagne celebration after your flight',
    importantinformation:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget commodo mi, non bibendum massa. Cras quis sollicitudin felis, nec tristique purus. Cras sed justo consectetur, commodo arcu in, aliquet lacus.',
    price: 164.06,
    like: 5,
    city: 'Cappadocia',
    country: 'Turkey',
    type: 'tour',
  ),
  Trip(
    nametour: 'Rafting - Sprouts - Rio Jacaré Pepira by Wild Canoe Territory',
    owner: 'Território Selvagem Canoar',
    promotionalword:
        'Rafting is one of the most popular sports for tourists coming to Brotas. There are thousands of people eager for emotion that recharge their energies and enjoy guided by the best and most awarded guides in Brazil. Rafting is performed in the waters of the Jacaré Pepira River, considered one of the best for this sport. The inflatable boat holds up to seven people, and the course of Rio is a reward of the nature to the practitioners who raced rapids, ebb and falls.',
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/0a/0c/38/52.jpg',
    periodh: '4',
    periodm: '0',
    groupsize: '6',
    tickettype: 'Mobile Phone',
    language: 'Portuguese, English, Spanish',
    pros:
        'Personal safety equipment, visitation rate, wind-jacket, Juice or hot chocolate, dripping with honey and safe Porto Seguro, Private transportation',
    importantinformation:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget commodo mi, non bibendum massa. Cras quis sollicitudin felis, nec tristique purus. Cras sed justo consectetur, commodo arcu in, aliquet lacus.',
    price: 26.54,
    like: 4.8,
    city: 'Brotas',
    country: 'Brazil',
    type: 'tour',
  ),
  Trip(
    nametour: 'City & Beatles Tour - BLUE ROUTE',
    owner: 'Liverpool City Sights',
    promotionalword:
        'Get to know Liverpool and discover the home of the Beatles with this hop-on hop-off bus pass valid for 90 minutes. Enjoy unlimited access to two different routes—the Blue Route, which follows a Beatles-themed itinerary, visiting Penny Lane, Strawberry Field and the childhood homes on John Lennon and Paul McCartney; and the Red Route, which stops at city attractions including Royal Albert Dock, the Walker Gallery, the Cavern Club, and Liverpool Cathedral.',
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/0b/27/ff/21.jpg',
    periodh: '1',
    periodm: '30',
    groupsize: '9',
    tickettype: 'Mobile Phone',
    language: 'English',
    pros:
        'Live Guide Blue route - City & Beatles, wind-jacket, FREE glass of bubbly at The Philharmonic Dining Rooms. Present your ticket to get your free glass, Red Route City Tour - 24 hour Hop On Hop Off',
    importantinformation:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget commodo mi, non bibendum massa. Cras quis sollicitudin felis, nec tristique purus. Cras sed justo consectetur, commodo arcu in, aliquet lacus.',
    price: 22.14,
    like: 4.4,
    city: 'Liverpool',
    country: 'United Kingdom',
    type: 'tour',
  ),
  Trip(
    nametour: 'Tour of North Shore (70%) and Sightseeing (30%)',
    owner: 'North Shore Beach Bus',
    promotionalword:
        'Skip the hassle of renting a car and see the highlights of Oahu’s North Shore from the comfort of a minibus or van. Along the way, a guide keeps you entertained and shares details about the island that you would likely miss if traveling on your own. At each stop, you can enjoy free time to swim, shop, paddleboard/kayak or do an optional waterfall hike while getting to know the island.',
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/0c/0b/49/c6.jpg',
    periodh: '8',
    periodm: '0',
    groupsize: '15',
    tickettype: 'Mobile Phone',
    language: 'English',
    pros:
        'A guide narrates the journey so you can learn about the sights along the way, Take in the views while someone else does the driving, The flexible tour includes optional upgrades to such as lunch, paddleboarding, or kayaking',
    importantinformation:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget commodo mi, non bibendum massa. Cras quis sollicitudin felis, nec tristique purus. Cras sed justo consectetur, commodo arcu in, aliquet lacus.',
    price: 139,
    like: 5,
    city: 'Honolulu County, Hawaii',
    country: 'U.S. state',
    type: 'tour',
  ),
];

List<Trip> listCity = [
  Trip(
    nametour: 'Amsterdam',
    owner: 'The Netherlands',
    promotionalword:
        'From its picturesque canals and bridges to its historic homes, Amsterdam is a full-blown fairytale. The brightly-colored bicycles and tulip stands around town don’t hurt either. Must-see sights include the Anne Frank House, the Van Gogh Museum, and the world\'s only floating flower market. Rent a bike and join thousands of locals peddling around. Other visitors might want to linger in the local coffee shops, which is just a normal part of the city\'s landscape.',
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/c0/8c/cb/caption.jpg?w=1200&h=-1&s=1&cx=1417&cy=1042&chk=v1_ad4fa9803937402ad7bf',
    periodh: '-',
    periodm: '-',
    groupsize: '-',
    tickettype: '-',
    language: '-',
    pros: '-',
    importantinformation: '-',
    price: 0,
    like: 5,
    city: '-',
    country: 'Netherlands',
    type: 'country',
  ),
  Trip(
    nametour: 'Cappadocia',
    owner: 'Turkey',
    promotionalword:
        'Lying in south central Turkey, the moonscaped region of Cappadocia, southeast of Ankara, is most famous for unique geological features called fairy chimneys. The large, cone-like formations were created over time by erosion of the relatively soft volcanic ash around them. Past cultures have dug into them to create dwellings, castles (like Uchisar) and even entire underground cities like Kaymakli and Derinkuyu, used as hiding places by early Christians. Nearby Kayseri is the gateway to the area.',
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/06/dc/2a/por-do-sol-magico-capadocia.jpg?w=800&h=-1&s=1',
    periodh: '-',
    periodm: '-',
    groupsize: '-',
    tickettype: '-',
    language: '-',
    pros: '-',
    importantinformation: '-',
    price: 0,
    like: 5,
    city: '-',
    country: 'Turkey',
    type: 'country',
  ),
  Trip(
    nametour: 'Sao Paulo',
    owner: 'Brazil',
    promotionalword:
        'The largest city in South America, Sao Paulo’s cuisine and art is as multinational as its diverse population of 10 million. With the restaurants of the Jardins district serving every food imaginable to diners from around the world, you wouldn’t be out of place going to Sao Paulo just for the dining. But you’d be missing out on world-class museums, diverse and vibrant neighborhood tours, and crazy-good shopping.',
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/74/2b/0d/get-to-know-the-beautiful.jpg?w=800&h=-1&s=1',
    periodh: '-',
    periodm: '-',
    groupsize: '-',
    tickettype: '-',
    language: '-',
    pros: '-',
    importantinformation: '-',
    price: 0,
    like: 5,
    city: '-',
    country: 'Brazil',
    type: 'country',
  ),
  Trip(
    nametour: 'Liverpool',
    owner: 'United Kingdom',
    promotionalword:
        'Liverpool\'s fortunes have historically been tied to shipping. But imports and exports like sugar, spice and tobacco pale in comparison with Liverpool\'s most famous export of all—the Beatles. Relive the hysteria at the Beatles Story Experience, and check out Paul\'s childhood home, but also leave time for exploring Liverpool Cathedral and the Walker Art Gallery.',
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/9b/2f/c7/liverpool.jpg?w=1200&h=-1&s=1',
    periodh: '-',
    periodm: '-',
    groupsize: '-',
    tickettype: '-',
    language: '-',
    pros: '-',
    importantinformation: '-',
    price: 0,
    like: 5,
    city: '-',
    country: 'United Kingdom',
    type: 'country',
  ),
  Trip(
    nametour: 'Hawaii',
    owner: 'United States',
    promotionalword:
        'For many, the word "vacation" conjures images of sunbathing on a sunny beach, paddling in a dazzling blue ocean, napping under coconut trees—in other words, Hawaii. But travelers who can pull themselves away from the 50th state\'s stunning beaches will find so much more. From volcanic landscapes to hidden waterfalls and epic expeditions, a Hawaiian getaway can go in a dozen different directions. Each of the six major islands Kauai, Oahu, Molokai, Lanai, Maui, and the island of Hawaii has its own distinct personality and unique opportunities for adventure, dining, culture, and relaxation.',
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/4a/db/d7/the-world-famous-waikiki.jpg?w=1200&h=-1&s=1',
    periodh: '-',
    periodm: '-',
    groupsize: '-',
    tickettype: '-',
    language: '-',
    pros: '-',
    importantinformation: '-',
    price: 0,
    like: 5,
    city: '-',
    country: 'United States',
    type: 'country',
  ),
];
