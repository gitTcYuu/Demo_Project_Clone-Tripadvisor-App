//Trip
class Trip {
  String? name;
  String? detail;
  String? imageUrl;
  String? city;
  String? country;
  String? type;
  int? price;

  Trip({
    this.name,
    this.detail,
    this.imageUrl,
    this.city,
    this.country,
    this.type,
    this.price,
  });
  //Json Convertor
  //--
}

List<Trip> listThingToDo = [
  Trip(
    name: 'Amsterdam\'s canals by going on this scenic cruise',
    detail:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus euismod in leo at tristique. Nunc vehicula accumsan erat vel maximus. Proin mauris nibh, tincidunt sed rhoncus in, pulvinar sed ligula. Maecenas consectetur neque libero, sed congue lectus accumsan sed.',
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/0e/2c/95/94.jpg',
    city: 'Amsterdam',
    country: 'Netherlands',
    type: 'trip',
    price: 100,
  ),
  Trip(
    name: 'Hot-air balloon ride over Cappadocia',
    detail:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus euismod in leo at tristique. Nunc vehicula accumsan erat vel maximus. Proin mauris nibh, tincidunt sed rhoncus in, pulvinar sed ligula. Maecenas consectetur neque libero, sed congue lectus accumsan sed.',
    imageUrl:
        'https://images.unsplash.com/photo-1631152282084-b8f1b380ccab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTB8fGJhbGxvbiUyMGNhcHBhZG9jaWF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    city: 'Cappadocia',
    country: 'Turkey',
    type: 'trip',
    price: 120,
  ),
  Trip(
    name: 'The most fun route of rafting paulista',
    detail:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus euismod in leo at tristique. Nunc vehicula accumsan erat vel maximus. Proin mauris nibh, tincidunt sed rhoncus in, pulvinar sed ligula. Maecenas consectetur neque libero, sed congue lectus accumsan sed.',
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/0a/0c/38/52.jpg',
    city: 'Brotas',
    country: 'Brazil',
    type: 'trip',
    price: 65,
  ),
  Trip(
    name: 'Gower Street bus stop! City & Beatles Tour',
    detail:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus euismod in leo at tristique. Nunc vehicula accumsan erat vel maximus. Proin mauris nibh, tincidunt sed rhoncus in, pulvinar sed ligula. Maecenas consectetur neque libero, sed congue lectus accumsan sed.',
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/0b/27/ff/21.jpg',
    city: 'Liverpool',
    country: 'United Kingdom',
    type: 'trip',
    price: 50,
  ),
  Trip(
    name: 'The ancient footpath of the Incas directly into Machu Picchu',
    detail:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus euismod in leo at tristique. Nunc vehicula accumsan erat vel maximus. Proin mauris nibh, tincidunt sed rhoncus in, pulvinar sed ligula. Maecenas consectetur neque libero, sed congue lectus accumsan sed.',
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/87/b9/f9/caption.jpg?w=1100&h=-1&s=1',
    city: 'Machupicchu District',
    country: 'Peru',
    type: 'trip',
    price: 65,
  ),
];

List<Trip> listCity = [
  Trip(
    name: 'Amsterdam',
    detail:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus euismod in leo at tristique. Nunc vehicula accumsan erat vel maximus. Proin mauris nibh, tincidunt sed rhoncus in, pulvinar sed ligula. Maecenas consectetur neque libero, sed congue lectus accumsan sed.',
    imageUrl:
        'https://images.unsplash.com/photo-1534351590666-13e3e96b5017?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0aGVybGFuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    city: 'Amsterdam',
    country: 'Netherlands',
    type: 'city',
    price: 0,
  ),
  Trip(
    name: 'Cappadocia',
    detail:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus euismod in leo at tristique. Nunc vehicula accumsan erat vel maximus. Proin mauris nibh, tincidunt sed rhoncus in, pulvinar sed ligula. Maecenas consectetur neque libero, sed congue lectus accumsan sed.',
    imageUrl:
        'https://images.unsplash.com/photo-1566790035366-5b18d1cffd0c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fGNhcHBhZG9jaWF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    city: 'Cappadocia',
    country: 'Turkey',
    type: 'city',
    price: 0,
  ),
  Trip(
    name: 'Brotas',
    detail:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus euismod in leo at tristique. Nunc vehicula accumsan erat vel maximus. Proin mauris nibh, tincidunt sed rhoncus in, pulvinar sed ligula. Maecenas consectetur neque libero, sed congue lectus accumsan sed.',
    imageUrl:
        'https://images.unsplash.com/photo-1542300058-b94b8ab7411b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YnJvdGFzJTIwcmFmdGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    city: 'Brotas',
    country: 'Brazil',
    type: 'city',
    price: 0,
  ),
  Trip(
    name: 'Liverpool',
    detail:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus euismod in leo at tristique. Nunc vehicula accumsan erat vel maximus. Proin mauris nibh, tincidunt sed rhoncus in, pulvinar sed ligula. Maecenas consectetur neque libero, sed congue lectus accumsan sed.',
    imageUrl:
        'https://images.unsplash.com/photo-1601779436248-4c269c0a0793?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGxpdmVycG9vbCUyMGNpdHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    city: 'Liverpool',
    country: 'United Kingdom',
    type: 'city',
    price: 0,
  ),
  Trip(
    name: 'Machupicchu District',
    detail:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus euismod in leo at tristique. Nunc vehicula accumsan erat vel maximus. Proin mauris nibh, tincidunt sed rhoncus in, pulvinar sed ligula. Maecenas consectetur neque libero, sed congue lectus accumsan sed.',
    imageUrl:
        'https://images.unsplash.com/photo-1646336351607-9a6706eefda0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fG1hY2h1cGljY2h1fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    city: 'Machupicchu District',
    country: 'Peru',
    type: 'city',
    price: 0,
  ),
];

