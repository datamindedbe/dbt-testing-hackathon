# Testing with soda

Soda is a data quality testing framework, you can find their website [here](https://www.soda.io/), and the open source git version [here](https://github.com/sodadata/soda-core).

We will be using the open source version today, there is already sample code available in the [soda](../soda) folder, and soda has been installed in the virtual environment.

Soda is typically run on your data after it has been processed so to prepare ourselves. You might have done these steps already but we list them here again:
- Run `dbt seed` in a terminal to populate the local postgres database to with some data
- After that please run `dbt run` to run all models

After that we can start doing our Data Quality testing.

After setting everything up you can run the soda tests! Use the following command to run soda:

```bash
./soda/run_soda.sh`
```

This will run all soda tests defined in [soda/checks.yml](../soda/checks.yml).
These checks are defined in a language called [soda checks language](https://docs.soda.io/soda-cl/soda-cl-overview.html).
Please have a look at the file and the [documentation of soda](https://docs.soda.io/soda-cl/soda-cl-overview.html) to see what is possible.

After that you can try to implement som extra checks on the [orders](../models/marts/orders.sql) table:

- Check that we have no duplicate order id
- Check that the order_total minimum is >= 0, since we can not sell goods with a negative value
- You can check all values of customer_id exist in the `stg_customers` table
- Or whatever test you think might be useful!

