# MixPanel to CSV

``` bash

# create mixpanel.zip
cd examples/zips
./zip_examples.sh 

# Upload mixpanel.zip
gr8_uploadJobBundle.sh mixpanel.zip "MixPanelExample"

# Create job to run mixpanel.kjb in mixpanel.zip (use your bun-)
gr8_createJob.sh bun-a6f48e47 mixpanel.kjb "MixPanelJob"

# Run job (use your job-)
gr8_createRunHTTP.sh job-66e631ad "EX_MP_API_KEY=<<redacted>>&EX_MP_API_SEC=<<redacted>>&to_date=2014-06-20&from_date=2014-06-10"

# Get Output Zip (sub run- for yours)
gr8_getRunOutput.sh run-43528be7
unzip -l run-43528be7.output.zip
```
