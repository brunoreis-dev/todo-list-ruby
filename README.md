# To-Do List

Ruby on Rails application to manage tasks.

## Functionality

- I can add a task to the list.
- I can see all the tasks on the list in an overview.
- I can delete a task.
- I can mark a task as completed.

## Running the app

Clone this repo:

```
$ git clone https://github.com/brunoreis-dev/todo-list-ruby
```

Install all dependancies:

```
$ bundle install
```

Create the database and run migrations:

```
$ rake db:create db:migrate
```

Run seeds:

```
$ rake db:seed
```

Start the server:

```
$ rails server
```

And open the app in your browser at http://localhost:3000.

## Interactive Console

Open Console:

```
$ rails console
```

## Testing the app

Run the tests:

```
$ rake
```

## Useful documentation

- [Ruby on Rails guides](http://guides.rubyonrails.org/)
