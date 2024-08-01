# Reduce cost
* Down-size EC2 and RDS instances
* Half storage RDS (5000Gb -> 2500 Gb)
* Other services like S3 and cloudfront are kept as-is to stablize performance

# Increase cost
* Up-size EC2 and RDS instances
* Double RDS storage (5000Gb -> 10000Gb)
* Other services like S3 and cloutfront reserving more throughput
* Scale expected EC2 instances from total of 8 to 12