# EPA/ICIS-Air Data Exchange

This repository tracks the data exchange for EPA's [ICIS-Air](https://icis.epa.gov/icis/) system.

Data is reported by APB staff via the IAIP to the `AIRBRANCH` database, staged in the `NETWORKNODEFLOW` database using stored procedures that run on a schedule, and finally sent to EPA through CDX using the [Virtual Exchange Service (VES)](https://ves.epa.gov/VESA/).
