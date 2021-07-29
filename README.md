# elasticsearch-head-light

light weight elasticsearch-head container, use echo-go serve as http server.

### Run

git clone this repo.

`cd repodir`

`./elasticsearch-head-light`

Open the site in Browser: http://yourip:9100

### Docker run

```
 docker build  . -t your-repo/elasticsearch-head-light:tag
 docker run -d -p 9100:9100 your-repo/elasticsearch-head-light:tag
 ```