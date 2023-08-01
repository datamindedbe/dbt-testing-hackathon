# Testing with soda

soda is a data quality testing framework, you can find their website [here](https://www.soda.io/), and the open source git version [here](https://github.com/sodadata/soda-core).

We will be using that open source version today, there is already some example code available in the [soda](../soda) folder, and soda has been installed in the virtual environment.
has run all models.

Using `dbt seed` we can populate the local postgres database to with some data. You might hav already done this before.

After that we need to run `dbt run`, to run all the models.

After that we can start doing our Data Quality testing.
Data quality tests is something you typically only do in production and after your models have run.

After setting everything up you can run the soda tests! You can use

```bash
./soda/run_soda.sh`
```

to run the tests defined in `soda/checks.yml`.

In that file we have defined a lot of checks on the customers table.
Just have a look at those, after that you can define your own checks on the order table
You can find the whole specification on the [soda docs](https://docs.soda.io/soda-cl/soda-cl-overview.html).

Some things you could try to implement on the customers table:

- Check that we have no duplicate order id
- Check that the order_total minimum is >= 0, since we can not sell goods with a negative value
- You can check all values of customer_id exist in the `stg_customers` table
- Or whatever test you think might be useful!

