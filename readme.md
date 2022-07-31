# lnd-journal

`lnd-journal` is a tool used to document changes to your LND config.

This is only being tested on Umbrel

## Commands

### `yarn promote`

Promotes the current contents of the `draft` diretory to `active`, and creates a timestamped version in the `archive` directory.

## Setup

### charge-lnd

Add to `crontab`

```
charge-lnd c ~/lnd-journal/active/charge-lnd.config ...
```
