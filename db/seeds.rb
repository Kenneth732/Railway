# Clear existing data
User.destroy_all
Photo.destroy_all

# Create Users with Photos
user1 = User.create(username: 'user1')
user2 = User.create(username: 'user2')

user1.photos.create(
  image_url: 'https://plus.unsplash.com/premium_photo-1669106605766-4eebc4f1cd7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
  title: 'Photo 1',
  year: 2023,
  length: 120,
  director: 'Director 1',
  description: 'Description 1',
  category: 'Category 1',
  discount: true,
  female_director: false
)

user1.photos.create(
  image_url: 'https://images.unsplash.com/photo-1448375240586-882707db888b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
  title: 'Photo 2',
  year: 2022,
  length: 150,
  director: 'Director 2',
  description: 'Description 2',
  category: 'Category 2',
  discount: false,
  female_director: true
)

user2.photos.create(
  image_url: 'https://images.unsplash.com/photo-1511497584788-876760111969?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80',
  title: 'Photo 3',
  year: 2021,
  length: 180,
  director: 'Director 3',
  description: 'Description 3',
  category: 'Category 3',
  discount: true,
  female_director: true
)
