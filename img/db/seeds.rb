users = User.create(
  [
    { name: 'jeff' email: 'a@a.com', password: 'a', password_confirmation: 'a'},
    { name: 'pual' email: 'p@p.com', password: 'p', password_confirmation: 'p'},
    { name: 'ron' email: 'r@r.com', password: 'r', password_confirmation: 'r'},
    { name: 'yamborgini' email: 'y@y.com', password: 'y', password_confirmation: 'y'},
    { name: 'Elmo' email: 'e@e.com', password: 'e', password_confirmation: 'e'},
    { name: 'Swanson Ron' email: 'rule@internet.com', password: 'cat', password_confirmation: 'kitty'},
    { name: 'taco bell' email: 'taco@tacobell.com', password: 'taco', password_confirmation: 'shell'}
  ]
)
images = Image.create(
  [
    { filename: 'jeff' private: 'a@a.com', user_id: 'a' },
    
  ]
)