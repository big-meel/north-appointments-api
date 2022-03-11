# north-appointments-api
Backend Api for North Appointments web app

## Foreword 
The following REST api was created to be integrated with the north-appointments user 
interface application. The api primarily interacts with a postgresql database
using ruby on rails and its ActiveRecord ORM. 

It is designed for developers to send a CRUD request expecting a json response. Rails 
primarily will send errors back with failed requests but the api will attempt to send 
appropriate status codes where necessary. It is noted that the team at Norus (the 
primary intended users of this api) is primarily a JavaScript house and therefore as
much documentation as necessary (via comments and additional information in the README)
as possible will be provided for better understanding of the intended responses.

## Chosen Stack for API
 - Ruby on Rails Framework
 - Postgresql Database