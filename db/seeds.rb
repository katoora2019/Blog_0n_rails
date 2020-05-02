
# To run seeds, do:
# rails db:seed

Post.delete_all
NUM_Post = 50

NUM_Post.times do 
    created_at = Faker::Date.backward(days: 365 * 5)
    Post.create(
        title: Faker::Hacker.say_something_smart,
        body: Faker::ChuckNorris.fact,
        created_at: created_at,
        updated_at: created_at
    )
end
post = Post.all 

puts Cowsay.say("Generated #{post.count} post", :frogs)
