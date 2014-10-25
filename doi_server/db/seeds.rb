dois = Doi.create(
  [
    { name: 'Sally', desc: 'Jones', url: 'Chico State'},
    { name: 'Fred', desc: 'Smith', url: 'Chico State'}
  ]
)

urls = Url.create(
  [
    { site: 'PHYS 204B', rating: 4, doi_id: dois[0].id},
    { site: 'PHYS 204B', rating: 78, doi_id: dois[0].id},
    { site: 'MATH 217', rating: 0, doi_id: dois[1].id}
  ]
)