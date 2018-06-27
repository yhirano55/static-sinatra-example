# static-sinatra-example

https://hub.docker.com/r/yhirano55/static-sinatra-example/

![](https://github.com/yhirano55/static-sinatra-example/blob/master/cap.gif?raw=true)

## Setup

### Local

```
$ bundle install --path vendor/bundle -j4
$ bundle exec rackup
```

And then you can access http://localhost:9292

### Container

```
$ docker build . -t yhirano55/static-sinatra-example:latest
$ docker run --name static-sinatra-example -d -p 3000:3000 yhirano55/static-sinatra-example
```

And then you can access http://localhost:3000
