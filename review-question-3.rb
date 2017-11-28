# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

class User
  attr_accessor :name
  attr_reader :photos

  def initialize(name)
    @name = name
    @photos = []
  end

end

class Photo
  attr_accessor :user, :comments

  def initialize
    @comments = []
  end

  def make_comment (string)
    comment = Comment.new (string)
    @comments << comment
  end

  def user= (person)
    @user = person
    person.photos << self
  end

end

class Comment
  attr_reader :text, :user
  @@all = []

  def initialize(string)
    @text = string
    @@all << self
  end

  def self.all
    @@all
  end

end


photo = Photo.new
user = User.new("Sophie")
photo.user = user
puts photo.user.name
# => "Sophie"
puts user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
puts photo.comments
# => [<comment1>]

puts Comment.all
#=> [<comment1>]
