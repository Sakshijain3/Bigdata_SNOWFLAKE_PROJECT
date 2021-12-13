select count(*) from test3 where price between 1000 and 1500;

unload ('select * from test3 where price between 1000 and 1500')
to 's3://redshift-output-loudncloud/price_1000/'
iam_role 'arn:aws:iam::417994528411:role/service-role/AmazonRedshift-CommandsAccessRole-20211204T161832'
Parallel off
PARQUET;


unload ('select * from test3 where price between 501 and 1000')
to 's3://redshift-output-loudncloud/price_1000/'
iam_role 'arn:aws:iam::417994528411:role/service-role/AmazonRedshift-CommandsAccessRole-20211204T161832'
Parallel off
PARQUET;



unload ('select * from test3 where price between 1001 and 1500')
to 's3://redshift-output-loudncloud/price_1500/'
iam_role 'arn:aws:iam::417994528411:role/service-role/AmazonRedshift-CommandsAccessRole-20211204T161832'
Parallel off
PARQUET;




unload ('select * from test3 where price between 1501 and 2000')
to 'ss3://redshift-output-loudncloud/price_2000/'
iam_role 'arn:aws:iam::417994528411:role/service-role/AmazonRedshift-CommandsAccessRole-20211204T161832'
Parallel off
PARQUET;
 
 
 
unload ('select * from test3 where price between 2001 and 3000')
to 's3://redshift-output-loudncloud/price >2000/'
iam_role 'arn:aws:iam::417994528411:role/service-role/AmazonRedshift-CommandsAccessRole-20211204T161832'
Parallel off
PARQUET;


select loudncloud, "test3" size "size mb" from 


select dev,
sum(megabytes) as total_mb
from public.test3
group by
dev;