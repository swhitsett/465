images = Image.create(
  [
    { image_fname: 'thun.jpg', track_id: '1'},
    { image_fname: 'willowsprings.jpg', track_id: '2'},
    { image_fname: 'Sonoma.jpg', track_id: '3'},
    { image_fname: 'Leguna.jpg', track_id: '4'},
    { image_fname: 'LBW-458-Challenge-03.jpg', track_id: '123'}
  ]
)

tracks = Track.create(
	[
	{ track_name: "Thunder Hill Raceway", image_id: '1', track_location: 'Willows, CA', track_desc: "Thunderhill Raceway Park is a road racing course located 7 miles (11 km) West of Willows, California on Hwy 162. The course is a fast series of twists and turns with minor elevation changes. Thunderhill is owned and operated by the San Francisco Region of the SCCA. It is host to many motorports events for cars and motorcycles. The SCCA uses Thunderhill for its automotive race competitions. The Northern California Chapter of the AFM runs several motorcycle races there every year."},
    { track_name: 'Willow Springs', image_id: '2', track_location: 'Rosamond, CA', track_desc: "Willow Springs International Motorsports Park is located in Willow Springs near Rosamond and Lancaster, California, about an hour north of Los Angeles. It is a historic race track, in existence more than 60 years."},
    { track_name: 'Sanoma Raceway', image_id: '3', track_location: 'Sanoma, CA', track_desc: 'Sonoma Raceway, formerly Sears Point Raceway and Infineon Raceway is a 2.52-mile road course and drag strip located on the landform known as Sears Point in the southern Sonoma Mountains in Sonoma, California, USA.'},
    { track_name: 'Leguna Seca', image_id: '4', track_location: 'Salinas, CA', track_desc: "Mazda Raceway Laguna Seca is a paved road racing track in central California used for both auto racing and motorcycle racing, built in 1957 near both Salinas and Monterey, California, USA."}

	]

)

accesses = Access.create(
  [
    { image_id: '1', track_id: '1', registered: '1'},
    { image_id: '2', track_id: '2' },
    { image_id: '3', track_id: '3'},
    { user_id: '1', event_id: '1'},
    { user_id: '2', car_id: '3'},
    { user_id: '1', car_id: '5'},
    { user_id: '1', car_id: '1'},
    { user_id: '1', car_id: '1'},
  ]
)

events = Event.create(
  [
    { cost: '12000', event_name: 'Go Super Fast', track_id: '1', event_model: 'Mercedes-Benz', event_model: 'C-class', event_desc: 'a;sghaosbvoehoaieho;ghof;aoiasdgasertgashasdflkughvuiawhes;ogyiausbe;ltrfh aasdfas faeeeasgipuha shkjbvuyuyasl kueryiulgvbasdiluge uudhdjh djjdjdjdjdhdjughugu guguggehoigha;ohgoaif;nc'},
    { cost: '12500', event_name: 'Beginer tranning event', track_id: '2', event_model: 'Chevrolet', event_model: 'Camaro', event_year: '1969', event_displacement: '5.7', event_desc: 'a;sghaosbvoehoaieh;asldighasolijh ga;osihgasio;dghfiaosdfhjioeionga;sidhihe indiia;serighigah;sd tgegasdgasgeo;ghof ;aoiehfasdfadffffasdfoigha;ohgoaif;nc'},
    { cost: '16500', event_name: 'Open Track day', track_id: '3', event_desc: 'a;sghaosbvoehoaieho;ghof;aoiasdgasertgash asdflku ghvuiawhes;ogyiausbe;ltrfhasg ipuhashkjbv uyuyaslkueryiulgvbasdilugeuudhdjhdjjd jdjdjdhdjug huguguguggehoigha;ohgoaif;nc'},
    { cost: '5000', event_name: 'Dont Crash', track_id: '3', event_desc: 'a;sghaosbvoehoaieho;ghof;aoiasdgasertga shasdflkughvuiawhes ;ogyiausbe;ltrfhasgipuhash kjbvuyuyaslku eryiulgvbasdi lugeuudhdjhdjjdjdjfagaegegdjd hdjughuguguguggehoig ha;ohgoaif;nc'}
  ]
)

cars = Car.create(
  [
    { car_make: 'Ford', car_model: 'Mustang', car_year: '1992', car_displacement: '5.0', car_weight: '3200' },
    { car_make: 'Chevrolet', car_model: 'Corvette', car_year: '2007', car_displacement: '7.0', car_weight: '8955' },
    { car_make: 'BMW', car_model: 'M3', car_year: '2004', car_displacement: '4.0', car_weight: '3044' },
    { car_make: 'Mercedes-Benz', car_model: 'C63AMG', car_year: '2010', car_displacement: '5.0', car_weight: '4555' },
    { car_make: 'Subuaru', car_model: 'STI', car_year: '2012', car_displacement: '5.0', car_weight: '3000' },
    { car_make: 'Ferrai', car_model: '458', car_year: '2012', car_displacement: '4.8', car_weight: '3000' },
    { car_make: 'Aston Martin', car_model: 'DBS', car_year: '2012', car_displacement: '5.0', car_weight: '5233' },
    { car_make: 'Pagani', car_model: 'Zonda', car_year: '2005', car_displacement: '3.0', car_weight: '3700' },
    { car_make: 'Dodge', car_model: 'Viper ACR', car_year: '2016', car_displacement: '6.2', car_weight: '3030' },
    { car_make: 'Honda', car_model: 'Civic', car_year: '1992', car_displacement: '2.0', car_weight: '3000' },
    { car_make: 'Ford', car_model: 'GT', car_year: '2004', car_displacement: '5.4', car_weight: '1234' },
    { car_make: 'Lexus', car_model: 'ISF', car_year: '2012', car_displacement: '5.0', car_weight: '4568' },
    { car_make: 'Ford', car_model: 'Mustang', car_year: '1992', car_displacement: '1.3', car_weight: '3000' },
    { car_make: 'Ford', car_model: 'Mustang', car_year: '1992', car_displacement: '5.0', car_weight: '1234' },

  ]
)

ttimes = Ttime.create(
  [
    { minutes: '2', seconds: '88', miliseconds: '133', car_id: '1', track_id: '1' },
    { minutes: '1', seconds: '12', miliseconds: '123', car_id: '2', track_id: '1' },
    { minutes: '6', seconds: '88', miliseconds: '311', car_id: '3', track_id: '2' },
    { minutes: '3', seconds: '33', miliseconds: '173', car_id: '4', track_id: '1' },
    { minutes: '8', seconds: '88', miliseconds: '123', car_id: '5', track_id: '1' },
    { minutes: '3', seconds: '88', miliseconds: '333', car_id: '6', track_id: '3' },
    { minutes: '2', seconds: '23', miliseconds: '123', car_id: '7', track_id: '1' },
    { minutes: '2', seconds: '88', miliseconds: '123', car_id: '8', track_id: '2' },
    { minutes: '2', seconds: '88', miliseconds: '178', car_id: '9', track_id: '3' },
    { minutes: '4', seconds: '88', miliseconds: '123', car_id: '10', track_id: '1' },
    { minutes: '2', seconds: '54', miliseconds: '123', car_id: '11', track_id: '2' },
    { minutes: '4', seconds: '02', miliseconds: '143', car_id: '12', track_id: '1' },
    { minutes: '2', seconds: '88', miliseconds: '123', car_id: '12', track_id: '1' },
    { minutes: '1', seconds: '09', miliseconds: '193', car_id: '14', track_id: '2' }
  ]
)

users = User.create(
  [
    { name: 'a', email: 'a@a.com', password: 'a', password_confirmation: 'a'},
    { name: 'pual', email: 'p@p.com', password: 'p', password_confirmation: 'p'},
    { name: 'ron', email: 'r@r.com', password: 'r', password_confirmation: 'r'},
    { name: 'yamborgini', email: 'y@y.com', password: 'y', password_confirmation: 'y'},
    { name: 'Elmo', email: 'e@e.com', password: 'e', password_confirmation: 'e'},
    { name: 'Swanson Ron', email: 'rule@internet.com', password: 'cat', password_confirmation: 'kitty'},
    { name: 'taco bell', email: 'taco@tacobell.com', password: 'taco', password_confirmation: 'shell'}
  ]

  )