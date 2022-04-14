# elasticsearch-head-light

light weight elasticsearch-head container, use echo-go serve as http server.

## Run

git clone this repo.

```bash
git clone https://github.com/chenyg0911/elasticsearch-head-light
cd git clone https://github.com/chenyg0911/elasticsearch-head-light
go build .
./elasticsearch-head-light
```

Open the site in Browser: <http://yourip:9100/?auth_user=elastic&auth_password=xxxxxxxxxxxxxxx>

## Docker build and run

```bash
 docker build  . -t your-repo/elasticsearch-head-light:tag
 docker run -d -p 9100:9100 your-repo/elasticsearch-head-light:tag
```
