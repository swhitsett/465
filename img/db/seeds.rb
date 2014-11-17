accesses = Access.create(
  [
    { image_id: '2', user_id: '1' },
    { image_id: '6', user_id: '2' },
    { image_id: '4', user_id: '3' },
    { image_id: '1', user_id: '4' },
    { image_id: '4', user_id: '6' },
    { image_id: '3', user_id: '5' }
  ]
)

images = Image.create(
  [
    { filename: '1.jpg', private: '1', user_id: '1' },
    { filename: '2.jpg', private: '0', user_id: '5' },
    { filename: '3.jpg', private: '1', user_id: '1' },
    { filename: '4.jpg', private: '0', user_id: '3' },
    { filename: '5.jpg', private: '0', user_id: '2' },
    { filename: '6.jpg', private: '1', user_id: '5' },
    { filename: '7.jpg', private: '1', user_id: '3' },
    { filename: '8.jpg', private: '1', user_id: '4' },
    { filename: '9.jpg', private: '0', user_id: '2' },
    { filename: '10.jpg', private: '0', user_id: '4' },
    { filename: '11.jpg', private: '1', user_id: '4' }
    
  ]
)

tags = Tag.create(
  [
    { tag_string: 'WOW that is cool', image_id: '1' },
    { tag_string: 'OMG is that big foot?????', image_id: '5' },
    { tag_string: 'I have so been there', image_id: '3' },
    { tag_string: 'WOW that is cool', image_id: '1' },
    { tag_string: 'Sandwich', image_id: '2' },
    { tag_string: 'asdfasdfasdfasdf', image_id: '5' },
    { tag_string: 'WOW that is cool', image_id: '1' },
    { tag_string: 'WOW that is cool', image_id: '6' },
    { tag_string: 'Dude did you see Nelsons project its hilarious', image_id: '2' },
    { tag_string: 'I like tacos better', image_id: '1' },
    { tag_string: 'Dude did you see Nelsons project its hilarious', image_id: '1' },
    { tag_string: 'Dude did you see Nelsons project its hilarious', image_id: '6' },
    { tag_string: 'I like tacos better', image_id: '3' },
    { tag_string: 'Dude did you see Nelsons project its hilarious', image_id: '4' },
    { tag_string: 'I have so been there', image_id: '1' }
    
  ]
)

users = User.create(
  [
    { name: 'jeff', email: 'a@a.com', password: 'a', password_confirmation: 'a'},
    { name: 'pual', email: 'p@p.com', password: 'p', password_confirmation: 'p'},
    { name: 'ron', email: 'r@r.com', password: 'r', password_confirmation: 'r'},
    { name: 'yamborgini', email: 'y@y.com', password: 'y', password_confirmation: 'y'},
    { name: 'Elmo', email: 'e@e.com', password: 'e', password_confirmation: 'e'},
    { name: 'Swanson Ron', email: 'rule@internet.com', password: 'cat', password_confirmation: 'kitty'},
    { name: 'taco bell', email: 'taco@tacobell.com', password: 'taco', password_confirmation: 'shell'}
  ]
)
