# Testing with soda


soda is a data quality testing framework, you can find their website [here](https://www.soda.io/), and the open source git version [here](https://github.com/sodadata/soda-core).

We will be using that open source version today, there is already some example code available in the `soda folder`, and soda has been installed in the virtual environment.

To run the soda tests we have defined you need to make sure that DBT has done it's job.

Using `dbt seed` we can populate the local postgres database to with some data. Then we can run `dbt test`, data quality tests is something you typically only do in production and after your models have run.

After setting everything up you can run the soda tests! You can use

```bash
./soda/run_soda.sh`
```

to run the tests defined in `soda/checks.yml`.

In that file we have defined a lot of checks on the customers table. Just have a look at those, after that you can define your own checks on the order table. You can find the whole specification on the [soda docs](https://docs.soda.io/soda-cl/soda-cl-overview.html).

Some things you could try to implement:

- Check that we have no duplicate order id
- Check that the order_total minimum is >= 0, since we can not sell goods with a negative value
- You can check all values of customer_id exist in the `stg_customers` table
- ...

