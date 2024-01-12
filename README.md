# LFE REPL with docker compose

An LFE REPL with docker compose. Up and running in 5 minutes.

## Installation

Docker compose should already be available. Clone the repository and start the docker stack:

```bash
git clone https://github.com/kwmiebach/lfe-docker.git

cd lfe-docker
docker compose up -d
```

## Usage

Make sure the docker stack is running, see [Installation](#installation).

You can now start a REPL in the lfe container with:

```bash
docker compose exec -it lfe /usr/local/bin/lfe
```

The repl works like this:

```lisp
> (+ 1 2)
3
> (io:format "Hello World~n")
Hello World
ok
```

To compile and try out the included sample module:

```lisp
> (c "app/sample-module.lfe")
> (sample-module:my-sum 1 6)
42
> (sample-module:my-sum 1 60)
3660
```

That's it for now.
