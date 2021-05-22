Micheal Trinh, S3780212
80+

	Date	2021-05-21									

![image](https://user-images.githubusercontent.com/48667610/119185708-6e2c1c00-baba-11eb-9d87-2d03488e1407.png)

https://gentle-ocean-91057.herokuapp.com/


Using:
 - rvm 1.29.12
 - Ruby 3.0.0p0
 - Rails 6.1.3.2

To deploy app:
 - go to the app's directory and run $ git push heroku master.
 - Then run $ heroku run rails db:migrate to update the db schema.
 - Then run $ heroku run rails db:seed to add the db data.
 - Go to https://gentle-ocean-91057.herokuapp.com/ to view the deployed app.
