The use of containers needs a strong supervision with different metrics than traditional VMs.
For monitor Docker hosts, I use a stack of InfluxDB a time-series database, Grafana the data visualiser and finally Telegraf to ship our metrics from few hosts.

## Get started

Clone the project and run setup.sh

```bash
git clone https://github.com/jivoi/docker-hosts-monitoring.git
cd docker-hosts-monitoring
sh setup.sh
```

Go on http://your-ip:3000 and connect to Grafana with these credentials (admin:P@ssw0rd)