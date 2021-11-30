# Python
import awswrangler as wr
import getpass
bucket = getpass.getpass()
path = f"s3://{bucket}/data/"
if "awswrangler_test" not in wr.catalog.databases().values:
    wr.catalog.create_database("awswrangler_test")
cols = ["id", "dt", "element", "value", "m_flag", "q_flag", "s_flag", "obs_time"]
df = wr.s3.read_csv(
    path="s3://noaa-ghcn-pds/csv/189",
    names=cols,
    parse_dates=["dt", "obs_time"])  # Read 10 files from the 1890 decade (~1GB)
wr.s3.to_parquet(
    df=df,
    path=path,
    dataset=True,
    mode="overwrite",
    database="awswrangler_test",
    table="noaa"
);
wr.catalog.table(database="awswrangler_test", table="noaa")