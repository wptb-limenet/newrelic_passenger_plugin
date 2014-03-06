## Introduction

A New Relic agent to collect status information from phusion passenger via the xml output of the passenger-status command

## Passenger Agent Installation

1. Download the latest version
2. Extract to the location you want to run the agent from
3. `bundle install` to get the necessary gems
4. Copy `config/template_newrelic_plugin.yml` to `config/newrelic_plugin.yml`
5. Edit `config/newrelic_plugin.yml` and replace "YOUR_LICENSE_KEY_HERE" with your New Relic license key
6. Edit `config/newrelic_plugin.yml` and add the full path to your 'passenger-status --show=xml' and 'free -m' commands if needed, as well as the hostname (as you want it to appear in NewRelic)
7. Run `./newrelic_passenger_agent`

## Data Collected

Data for this agent is collected by running the commands 'passenger-status --show=xml' and 'free -m' then parsing the results

Data captured for => passenger-status --show=xml
- # of processes running (max and current)
- # waiting in queue
- total sessions active
- total cpu usage
- memory usage by process

Data captured for => free -m
- Total memory
- Memory used (all)
- Memory free (all)
- shared memory
- allocated to buffers
- cached
- memory used by applications
- memory available to applications
- total swap
- swap used
- swap free
- % Memory free (for summary metrics page)

## Other Sources

This agent originally based on the passenger agent by tamaloa https://github.com/tamaloa/newrelic_passenger_plugin
