# Dockerized lnurl-commando

An easily configurable docker instance of a lnurl server that fetches invoices over the lightning network via
lnsocket[^1] and commando[^2].

Primarily intended to be used with Core Lightning dockerized lnurl-commando could work with other lightning implemetations.


## Usage

```
docker compose up
```

or you can use a `.env` file based on the `.env.example`. Using a .env file is
prefered since there is no need to modify the docker-compose.yml or package.json files.

Make sure that the rune is restricted to the `invoice` method:
 
    $ lightning-cli commando-rune restrictions=method=invoice

[^1]: https://github.com/jb55/lnsocket
[^2]: https://github.com/lightningd/plugins/tree/master/commando


