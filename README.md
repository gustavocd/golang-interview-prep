# golang interview prep

## Goal of this rep

This repo contains Golang code that does not follow best practices, contains bugs and security issues. It is intended to
be used as an interview exercise or a practices exercise for jr/mid-level Go engineers.

This repo contains, technically, a functional golang application that receives a request to create a user and stores it
into a postgres Database.

As an exercise, you could try identifying and correcting some of the issues in this repo. This would work particularly
well as a pair programming exercise.

## Getting Started

You can get the database started by running `docker-compose up`

Once running the Go app, you can make a CURL request as follows:

```curl
 curl -X POST -H "Content-Type: application/json" -d '{"username":"john", "password":"secret"}' http://localhost:8080/user
```

## ToDo

- [x] Encrypt the user's password
- [x] Save the user's name
- [x] Add Makefile to manage the project
- [x] Add graceful shutdown to the server
- [x] Ignore the autogenerated `data` and `vendor` folders
- [ ] Avoid sql injection
- [ ] Add a better way to manage ENV variables
- [ ] Add tests (unit and integration)
- [ ] Add a logging strategy
- [ ] Add the linter configuration
- [ ] Add github action to run the linter and test
