# Unit testing

To test the dbt models we write, we use a package called dbt_unit_testing by EqualExperts.
You need mock input data (in dbt that means sources or references), and specify the expected output.
There’s a slightly scary step where you have to override the ref and source macros,
or use the explicit `dbt_unit_testing.` prefix. But under the hood they aren't changing too much.

An example of a unit test can be found in [tests/unit/test_mart_customers.sql](../tests/unit/test_mart_customers.sql).

`dbt_unit_testing.test` defines the model being tested and the name of the test.

`dbt_unit_testing.mock_ref` implements a mock for the table specified in the format specified.

`dbt_unit_testing.expect` is the expected output after running the test.


We can run this test by running the following command in the terminal:

```bash
dbt test -s test_mart_customers
```

The `-s test_mart_customers` tells dbt to only run the test we are interested in.

After this you can try and write your own test!

## Writing your own test

I would suggest to start with writing a test for `stg_products` this model has some small logic and only references the `raw_products` table making it easy to implements some tests for it.
Let's create a file `test_stg_products.sql` in the [tests/unit](../tests/unit) folder just like the `test_mart_customers.sql`. 

After that follow the structure of the `test_mart_customers.sql`:
- `dbt_unit_testing.test` to define a test 
- use `dbt_unit_testing.mock_source` instead `dbt_unit_testing.mock_ref` to mock the `raw_products` table. Since this time we are mocking a source instead of a ref
- `dbt_unit_testing.expect` to specify expected output