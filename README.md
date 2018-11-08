# Rails Hour App

Smallest Rails app that gives you the hour in Mexico City. It uses PostgreSQL and it's useful as a small boilerplate app to test a production environment (staging/production); since the hour is dynamic, this is particularly useful to test catching configurations (Varnish Cache, etc.).

## Installation

* Clone the repo
* ```cp config/database.copy.yml config/database.yml  # and customize it```
* generate new credentials or upload your ```config/master.key```
* Test it on your environment
