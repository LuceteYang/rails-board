# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

new_post = Post.new
new_post.title = "안녕히세요"
new_post.content = "안녕히세요"
new_post.save

reply = Reply.new
reply.content = "첫번째 리플입니다."
reply.post =new_post
reply.save