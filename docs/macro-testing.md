# Testing macros

It's also possible to test your macros with DBT.
You can find such an example in the folder `tests/macros`.

The macro `cents_to_dollars` is defined in the file [macros/cents_to_dollars.sql](../macros/cents_to_dollars.sql)
and is tested in [tests/macros/test_macro_cents_to_dollars.sql](../tests/macros/test_macro_cents_to_dollars.sql). 

Have a look at the macro and the test.
Another macro we could define is the macro `truncate_to_timespan`.
In multiple models we use something like `ordered_at <= {{ var("truncate_timespan_to") }}`,
for example [models/stg_orders.sql](../models/stg_orders.sql).

So we could define a macro to do this for us.

To get started create the following file: [macros/truncate_to_timespan.sql](../macros/truncate_to_timespan.sql).
And copy the following content into it:

```sql
{# A basic example truncate a table to a certain date #}
{% macro truncate_to_timespan(column_name, truncate_timespan_to = var('truncate_timespan_to')) -%}
{{ column_name }} <= {{ truncate_timespan_to }}
{%- endmacro %}
```

We can then write a test for this in the same vein as [tests/macros/test_macro_cents_to_dollars.sql](../tests/macros/test_macro_cents_to_dollars.sql).
Go ahead and create a new file `tests/macros/test_macro_truncate_to_timespan.sql` and try to write a test for our newly created macro.

To test this out you can use the following strategy, create a table with all a data column and input multiple dates. You can cast a string to a date in sql using the follwing syntax `'2022-11-11'::date`, then just like the [macro cents to dollars test](../tests/macros/test_macro_cents_to_dollars.sql), you should add a new column to the table that uses the macro.

By default our macro uses the var `truncate_timespan_to`, but we can override the value in our test making it easy to decide a cutoff point. You can add it in the code like this: `{{ truncate_to_timespan("input_col", "cast('2023-01-01' as date)") }}`.

This should give you all the ingredients to make a unit test for the macro. To test out your implementation run:

```bash
dbt test -s test_macro_truncate_to_timespan
```