# Platform architecture

## Overview

One resource group per environment holds the shared platform services.
Logs are archived to a storage account created by `modules/storage-account`.

## Regions

Primary region: UK South.
No secondary region yet.

## Environments

| Environment | Subscription | Purpose |
| --- | --- | --- |
| dev | novatech-platform-dev | Engineering changes land here first |
| prod | novatech-platform-prod | Customer-facing platform services |

## Tagging

Data classification tags are required on all resources.
