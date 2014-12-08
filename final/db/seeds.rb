images = Image.create(
  [
    { image_fname: 'thun.jpg', track_id: '1'},
    { image_fname: 'willowsprings.jpg', track_id: '2'}
  ]
)

tracks = Track.create(
	[
		{ track_name: "Thunder Hill Raceway", image_id: '1'},
    	{ track_name: 'Willow Springs', image_id: '2'}
	]

)

accesses = Access.create(
  [
    { image_id: '1', track_id: '1' },
    { image_id: '2', track_id: '2' }
  ]
)