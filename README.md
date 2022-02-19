## Testing dbt project: `poffertjes_shop` 🇳🇱

`poffertjes_shop` is the dbt project of a fictional vendor selling miniature Dutch pancakes. (Roughly the size of the circle created by putting your index finger and thumb together 👌 ).

The project is inspired by the [`jaffle_shop`](https://github.com/dbt-labs/jaffle_shop) project, but now has more Amsterdam!

### Conventions

This project follows conventions defined in the `conventions.py` file. To validate the conventions, use pytest.

```
poetry run pytest conventions.py
```

### Using the project

Open this project in a Github Codespace to get started. (Click the green `Code` button in the project's Github page and select `New Codespace`.)

You can run the dbt commands with poetry. The commands below will also be ran automatically the first time you start the Codespace.

```bash
poetry run dbt build
poetry run dbt docs generate
poetry run dbt snapshot
poetry run dbt source freshness
```

To inspect the database, use the `psql` command.

```
psql
```

### Documentation site

The dbt docs are available on the repository's Github pages site.

https://tjwaterman99.github.io/poffertjes_shop/

You can also start the docs site from the development environment.

```
poetry run dbt docs serve
```
