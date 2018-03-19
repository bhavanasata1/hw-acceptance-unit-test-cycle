Feature: create a new movie
 
  As a movie buff
  So that I can add the movie which is not on the database
  I want to create a new movie
 
Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
 
Scenario: creating a new movie
  When I am on the Rottenpotatoes home page 
  And I follow "Add new movie"
  And I fill in "Title" with "Batman"
  And I select "PG-13" from "Rating"
  And I select "2014" from "movie_release_date_1i"
  And I select "Jan" from "movie_release_date_2i"
  And I select "5" from "movie_release_date_3i"
  And I press "Save Changes"
  Then I should see "Batman was successfully created"
  And I should see "PG-13"
  And I should see "2014-01-05"
  