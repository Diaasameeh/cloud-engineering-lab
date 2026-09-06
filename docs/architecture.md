# Platform architecture

## Overview

One resource group per environment holds the shared platform services.
Logs are archived to a storage account created by `modules/storage-account`.

## Regions

Primary region: UK South.
Secondary region: UK West (disaster recovery).

## Environments

| Environment | Subscription | Purpose |
| --- | --- | --- |
| dev | novatech-platform-dev | Engineering changes land here first |
| prod | novatech-platform-prod | Customer-facing platform services |
