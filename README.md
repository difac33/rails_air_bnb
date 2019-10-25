# README

* Ruby version 2.5.1
* Rails version 5.2.3

------

<h2>Airbnb Dog</h2>

On crée une base de données pour un site sur le modèle Airbnb avec des chiens et des promeneurs, qui peuvent prendre rendez-vous ensemble pour une promenade.

<b>Tables</b>

Les différentes tables : 
* `dogs`
* `dogsitters`
* `strolls`
* `cities`

<b>Relations</b>

1-to-n :
* `cities` - `dogs`
* `cities` - `dogsitters`

n-to-n :
* `dogs` - `dogsitters` (liés par `strolls`)

--------

Fait en utilisant les ressources de <a href="https://www.thehackingproject.org" target="_blank">The Hacking Project</a>
