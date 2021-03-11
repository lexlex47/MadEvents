[![Maintainability](https://api.codeclimate.com/v1/badges/cf19d709d84dbc31fa36/maintainability)](https://codeclimate.com/github/lexlex47/MadEvents/maintainability)

# MadEvents

It is a code test for Delegate Connect.

## Task

There is an events company called Mad Events that specializes in virtual conferencing.

They have tasked you with building an application that will allow clients to set up events with the following requirements: 
- Clients can create an event 
- An event can include any number of talks 
- A talk must have 1 speaker 
- A talk must have a start and end time 
- Talk times cannot overlap; they must be in sequential order. For example; a client cannot add a talk from 10am to 10:30am when a talk from 9:30am to 10:30am already exists in the event

## TODO

Build a CLI program that meets the above requirements and will accept the following commands: 
- CREATE EVENT event_name 
- CREATE SPEAKER speaker_name 
- CREATE TALK event_name talk_name talk_start_time talk_end_time speaker_name 
- PRINT TALKS event_name => output the talks for an event sorted by the start time

### Dependencies

    Ruby => 2.7.2p137 (2020-10-01 revision 5445e04352) [x64-mingw32]
    Bundler => 2.1.4
    Gem => 3.1.4

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'MadEvents'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install MadEvents

## Command

- CREATE_EVENT
- CREATE_SPEAKER
- CREATE_TALK 
- PRINT_TALKS
- Q

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

"# MadEvents" 
