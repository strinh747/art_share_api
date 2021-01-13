# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([
    {username: 'strinh2'},
    {username: 'dpan16'},
    {username: 'triddek'},
    {username: 'anniet10'}
])

artworks = Artwork.create([
    {title: 'Farmer\'s Market', image_url: 'https://images.unsplash.com/photo-1610415946035-bad6fc9f5b8e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', artist_id: 1},
    {title: 'Breakfast', image_url:  'https://images.unsplash.com/photo-1606851094291-6efae152bb87?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', artist_id: 4},
    {title: 'Bacon', image_url:'https://images.unsplash.com/photo-1606851094655-b2593a9af63f?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', artist_id: 3},
    {title: 'Burger', image_url: 'https://images.unsplash.com/photo-1610440042657-612c34d95e9f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', artist_id: 2}
])

artwork_shares = ArtworkShare.create([
    {artwork_id: 1, viewer_id: 2},
    {artwork_id: 1, viewer_id: 3},
    {artwork_id: 2, viewer_id: 4},
    {artwork_id: 4, viewer_id: 3}
])

comments = Comment.create([
    {user_id: 1, artwork_id: 2, body: 'Nice work!'},
    {user_id: 3, artwork_id: 1, body: 'Great job!'},
    {user_id: 2, artwork_id: 4, body: 'Wow!'}
])