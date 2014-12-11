images = Image.create(
  [
    { image_fname: 'thun.jpg', track_id: '1'},
    { image_fname: 'willowsprings.jpg', track_id: '2'},
    { image_fname: 'Sonoma.jpg', track_id: '3'},
    { image_fname: 'LBW-458-Challenge-03.jpg', track_id: '123'}
  ]
)

tracks = Track.create(
	[
		{ track_name: "Thunder Hill Raceway", image_id: '1', track_location: 'Willows, CA', track_desc: "Thunderhill Raceway Park is a road racing course located 7 miles (11 km) West of Willows, California on Hwy 162. The course is a fast series of twists and turns with minor elevation changes. Thunderhill is owned and operated by the San Francisco Region of the SCCA. It is host to many motorports events for cars and motorcycles. The SCCA uses Thunderhill for its automotive race competitions. The Northern California Chapter of the AFM runs several motorcycle races there every year."},
    { track_name: 'Willow Springs', image_id: '2', track_location: 'Rosamond, CA', track_desc: "Willow Springs International Motorsports Park is located in Willow Springs near Rosamond and Lancaster, California, about an hour north of Los Angeles. It is a historic race track, in existence more than 60 years."},
    { track_name: 'Sanoma Raceway', image_id: '3', track_location: 'Sanoma, CA', track_desc: 'Sonoma Raceway, formerly Sears Point Raceway and Infineon Raceway is a 2.52-mile road course and drag strip located on the landform known as Sears Point in the southern Sonoma Mountains in Sonoma, California, USA.'}
	]

)

accesses = Access.create(
  [
    { image_id: '1', track_id: '1' },
    { image_id: '2', track_id: '2' },
    { image_id: '3', track_id: '3'},
    { user_id: '1', event_id: '1'}
  ]
)

events = Event.create(
  [
    { event_name: 'Go Super Fast', track_id: '1', event_desc: 'a;sghaosbvoehoaieho;ghof;aoiehoigha;ohgoaif;nc', event_model: 'Mercedes-Benz', event_model: 'C-class'},
    { event_name: 'Beginer tranning event', track_id: '2', event_desc: 'a;sghaosbvoehoaieho;ghof;aoiehfasdfadffffasdfoigha;ohgoaif;nc', event_model: 'Chevrolet', event_model: 'Camaro', event_year: '1969', event_displacement: '5.7'},
    { event_name: 'Open Track day', track_id: '3'},
    { event_name: 'Dont Crash', track_id: '3'}
  ]
)

cars = Car.create(
  [
    { car_make: 'Ford', car_model: 'Mustang', car_year: '1992', car_displacement: '5.0', car_weight: '3000' }
  ]
)

ttimes = Ttime.create(
  [
    { minutes: '2', seconds: '88', miliseconds: '123', car_id: '1', track_id: '1' }
  ]
)

users = User.create(
  [
    {name: 'a', email: 'a@a.com', password: 'a', password_confirmation: 'a', car_id: '1'},
    { name: 'pual', email: 'p@p.com', password: 'p', password_confirmation: 'p'},
    { name: 'ron', email: 'r@r.com', password: 'r', password_confirmation: 'r'},
    { name: 'yamborgini', email: 'y@y.com', password: 'y', password_confirmation: 'y'},
    { name: 'Elmo', email: 'e@e.com', password: 'e', password_confirmation: 'e'},
    { name: 'Swanson Ron', email: 'rule@internet.com', password: 'cat', password_confirmation: 'kitty'},
    { name: 'taco bell', email: 'taco@tacobell.com', password: 'taco', password_confirmation: 'shell'}
  ]

  )