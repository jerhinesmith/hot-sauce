# Hot Sauce

Generate the links like this:

```shell
  curl -s https://heatonist.com/collections/hot-ones-hot-sauces\?page\=1 | grep href | egrep -o "products\/[0-9a-z-]+" | sort | uniq >> links
  curl -s https://heatonist.com/collections/hot-ones-hot-sauces\?page\=2 | grep href | egrep -o "products\/[0-9a-z-]+" | sort | uniq >> links
  curl -s https://heatonist.com/collections/hot-ones-hot-sauces\?page\=3 | grep href | egrep -o "products\/[0-9a-z-]+" | sort | uniq >> links
  curl -s https://heatonist.com/collections/hot-ones-hot-sauces\?page\=4 | grep href | egrep -o "products\/[0-9a-z-]+" | sort | uniq >> links
  curl -s https://heatonist.com/collections/hot-ones-hot-sauces\?page\=5 | grep href | egrep -o "products\/[0-9a-z-]+" | sort | uniq >> links
  curl -s https://heatonist.com/collections/hot-ones-hot-sauces\?page\=6 | grep href | egrep -o "products\/[0-9a-z-]+" | sort | uniq >> links
  curl -s https://heatonist.com/collections/hot-ones-hot-sauces\?page\=7 | grep href | egrep -o "products\/[0-9a-z-]+" | sort | uniq >> links
  curl -s https://heatonist.com/collections/hot-ones-hot-sauces\?page\=8 | grep href | egrep -o "products\/[0-9a-z-]+" | sort | uniq >> links
  ```

  And then created a uniq, sorted list:

  ```
  cat links | sort | uniq > ulinks
  ```
