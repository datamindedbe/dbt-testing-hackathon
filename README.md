# Quality Coffee

A sample dbt project used to illustrate some best practices for testing your dbt code.

If you want more background information on different kinds of tests you can use with dbt,
you can refer to blogpost [Testing frameworks in dbt](https://medium.com/datamindedbe/testing-frameworks-in-dbt-3fa8933a5807).


## Getting started on Conveyor during the hackaton

During the Hackaton people get a login for a Conveyor installation, please go to [Conveyor](https://app.conveyordata.com) and log in.

After that go to the [dbt-testing-hackaton project](https://app.conveyordata.com/projects/bfeaa8a1-7aaa-45ca-b4b4-145edafdee4e/ides) on conveyor.
Make sure you are on the IDE tab, and press the button `create a new IDE`.

<img src="./docs/images/create-ide.png" width="40%" style="min-width:600px"/>

When launched the IDE will automatically check out the project and:
- Launch `docker-compose up -d` this launches a local postgres server which can be used during the hackaton
- It will automatically install the virtual environment, and set up DBT and our testing packages.

It will also open this readme automatically to get started, open a terminal and run the following commands:
```bash
dbt seed #This will install some fake data
dbt run #This will run all the current models
```

After this we can start with implementing our first tests!

We have the following test starter docs:
- [Unit testing](./docs/unit-testing.md)
- [Testing with soda](./docs/soda.md)
- [Contract enforcement](./docs/enforcing-contracts.md)
- [Macro testing](./docs/macro-testing.md)


Some other things you could try out:
- [elementary](https://github.com/elementary-data/elementary)