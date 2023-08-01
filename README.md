# Quality Coffee

A sample dbt project used to illustrate some best practices for testing your dbt code.

If you want more background information on different kinds of tests you can use with dbt,
you can refer to blogpost [Testing frameworks in dbt](https://medium.com/datamindedbe/testing-frameworks-in-dbt-3fa8933a5807).


## Getting started on Conveyor during the hackaton

During the Hackaton people get a login for a Conveyor installation, please go to [Conveyor](https://app.conveyordata.com) and log in.

From there click on projects, go to the dbt_testing_hackaton project and click on IDE's. Press the create button, you only need to select the environment here.
Select the dev environment and click on create. This will launch a VSCode IDE on Conveyor.

When launched the IDE will automatically check out the project and:
- Launch `docker-compose up -d` this launches a local postgres server which can be used during the hackaton
- It will automatically install the virtual environment, and set up DBT and our testing packages.

After this we are almost ready, open a terminal and run the following commands:
```bash
dbt seed #This will install some fake data
dbt run #This will run all the current models
```

After this we can start with implementing our first tests!

We have the following test starter docs:
- [Unit testing](./docs/unit-testing.md)
- [Testing with soda](./docs/soda.md)
- [Contract enforcement](./docs/enforcing-contracts.md)


Some other things you could try out:
- [elementary](https://github.com/elementary-data/elementary)