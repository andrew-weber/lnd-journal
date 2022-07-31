# lnd-journal

`lnd-journal` is a tool used to document changes to your LND config.

_This has only been tested on Umbrel_

## Commands

### `yarn promote`

Promotes the current contents of the `draft` diretory to `active`, and creates a timestamped version in the `archive` directory.

## Setup

### Plan

Update `plan.md` to explain your changes in the `/draft` diretory.

### charge-lnd

1. Create `charge-lnd.config` in `/draft`

2. Edit `charge-lnd.config`

3. `yarn promote`

4. Add `chargel-lnd` to `crontab`

```
* * * * * ~/charge-lnd c ~/lnd-journal/active/charge-lnd.config ...
```
