# MEMBERS-ONLY

This is a simple rails application that implements both authorization and authentication functionalities. The app allows users to create and post comments about their colegues. However, you can only see the author of a particular comment when you are signed in.

Things covered in the project:

- Models, Views, and Controllers (MVC)
- Routing
- Migrations
- Views with forms, partials, and helpers
- RESTful design
- Adding gems for extra features



## How to run this app
To run it, clone this repository locally, and run these commands on your terminal.
```
Git clone git@github.com:Sick-Carlito/members-only.git

cd ~/members-only
rails s

```

#### To sign up
```
Visit localhost:3000/signup
```

then proceed to sign in

#### To sign in
```
Visit localhost:3000/signin
```
#### To create a post
```
Visit localhost:3000/posts/new
```

#### To view the posts
```
Visit localhost:3000/post
```

Note: You must be signed in to create a post

## Build with

- Ruby 2.6.3
- Rails 6.0.2
- sqlite3 1.4
- yarn bundler

## Author

- [Carl](https://github.com/Sick-Carlito/members-only)


## Acknowledgments

- [The Odin Project](https://www.theodinproject.com/courses/ruby-on-rails/lessons/authentication)