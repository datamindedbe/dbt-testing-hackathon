# Quality Coffee

A sample dbt project used to illustrate some best practices for testing your dbt code.

If you want more background information on different kinds of tests you can use with dbt,
you can refer to blogpost [Testing frameworks in dbt](https://medium.com/datamindedbe/testing-frameworks-in-dbt-3fa8933a5807).


## Getting started on Conveyor during the hackaton

During the Hackaton people get a login for a Conveyor installation,
please go to dbt-testing-hackaton project in Conveyor by following this [link](https://app.conveyordata.com/projects/bfeaa8a1-7aaa-45ca-b4b4-145edafdee4e/ides).

Please log in when prompted to do so. After logging in you should see the same windows as shown below.
Please press the button `create a new IDE`, to launch your IDE.

<img src="./docs/images/create-ide.png" width="40%" style="min-width:600px"/>

This will open a modal, in that modal select the `dev` environment and press the create button.

<img src="./docs/images/create-ide-modal.png" width="40%" style="min-width:600px"/>


## After launching an IDE on Conveyor


When launched the IDE will automatically check out the project and automatically op this README again. It will also
automatically do the following:
- It woull automatically launch a local postgres server which can be used during the hackaton
- It will automatically install the virtual environment, and set up DBT and our testing packages.

Sometimes the python plugin shows a failure at the bottom right, when this happens you need to click on it and set the virtual environment
to ```use Python from `python.defaultInterpreterPath` setting `./venv/bin/python````. This works correctly 90% of the time. Don't hesitate to reach out if you need help during the hackaton.

After this automatic setup is done you can start using dbt, to set up the necessary data. Open a terminal in vscode:

<img src="./docs/images/open-terminal.png" width="40%" style="min-width:300px"/>


After that run the following command in the terminal to populate the database with fake data:

```bash
dbt seed
```

Running this command might take up to 3 minutes. The `dbt seed` command will populate our database with the
fake data from the seeds directory.

After that we can run all our dbt models using:

```bash
dbt run
```

This will create all our new models. You can use the included database viewer to have a look at the data:

<img src="./docs/images/database.png" width="40%" style="min-width:600px"/>

## Experimenting with testing

After this we can start with experimenting with our first tests!

We have the following test starter docs:
- [Unit testing](./docs/unit-testing.md)
- [Testing with soda](./docs/soda.md)
- [Contract enforcement](./docs/enforcing-contracts.md)
- [Macro testing](./docs/macro-testing.md)


Some other data testing framework you could try out:
- [elementary](https://github.com/elementary-data/elementary)
- [re-data](https://github.com/re-data/re-data)

You can also scroll trough the list of projects with the [data-observability](https://github.com/topics/data-observability) tag on github.
