<h1 align="center">multi-file-swagger-docker</h1>

<p align="center">
  Wraps the multi-file-swagger NPM package in a Docker container.
</p>

## Usage

```
docker run \
  -v "`pwd`:/swagger" \
  multi-file-swagger-docker:latest \
  root.yml > output.json
```

Where:

- `root.yml` is the root Swagger YAML file.
- `output.json` is the name of the output JSON file.

## Note

Image uses:

- Node **v7**.
- multi-file-swagger **v2.0.0**.

## Links

- ["How to split a Swagger spec into smaller files"](http://azimi.me/2015/07/16/split-swagger-into-smaller-files.html) by [@mohsen1](https://github.com/mohsen1)
- [mohsen1/multi-file-swagger-example](https://github.com/mohsen1/multi-file-swagger-example)