dois = Doi.create(
  [
    { name: 'tacos', desc: 'delicious/bad', url: 'md89j3pg8h5lb7ghs,48h6yh5m,g7sdh'},
    { name: 'School', desc: 'future drinking problems', url: 'testdoi1'},
    { name: 'yarp', desc: 'phrase from movie', url: 'testdoi2'},
    { name: 'This', desc: 'Was', url: 'testdoi3'},
    { name: 'Tired', desc: 'its 2:00am', url: 'testdoi4'},
    { name: 'Snow', desc: 'I wanna go snowboarding', url: '86753098675309'}
  ]
)

urls = Url.create(
  [
    { site: 'www.tacobell.com', doi_id: dois[0].id},
    { site: 'www.ChicoState.com', doi_id: dois[1].id},
    { site: 'www.ChicoState.com/sportsNstuff', doi_id: dois[1].id},
    { site: 'http://www.hotfuzz.com', doi_id: dois[2].id},
    { site: 'Hard.edu', doi_id: dois[3].id},
    { site: 'poop.com', doi_id: dois[4].id},
    { site: 'www.mountshasta.com', doi_id: dois[5].id}
  ]
)