# Testing dbt project: `poffertjes_shop`

`poffertjes_shop` is a fictional vendor selling miniature Dutch pancakes. This dbt project is inspired by the [`jaffle_shop`](https://github.com/dbt-labs/jaffle_shop) demo project, but now has more Amsterdam! (as well as features such as snapshots, souces, and freshness checks).

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

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
