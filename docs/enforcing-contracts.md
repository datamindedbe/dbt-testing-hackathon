# Enforcing contracts


DBT allows you to enforce contracts on models and even to version different models.

They name this [model governance](https://docs.getdbt.com/docs/collaborate/govern/about-model-governance) in the docs.
There are 2 important aspects:
- [contracts](https://docs.getdbt.com/docs/collaborate/govern/model-contracts) which are currently set up in this repository for the marts models. Try and add a column to the customers model for example. And execute `dbt run`, with contracts enabled it should fail. If you disable contracts it should allow it
- [model versions](https://docs.getdbt.com/docs/collaborate/govern/model-versions) allow you to create multiple version of a model. With model contracts your `dbt run` would fail when you add a column. Now instead we could make a v2 of the `customers` model. So go ahead and create `customers_v2.sql` and try to make it a new version according to the dbt docs.
