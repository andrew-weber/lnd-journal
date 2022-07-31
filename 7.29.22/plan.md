# 7/29/21

## Goals

- Maintain a fixed ppm for the large sinks.
- Provide variable ppm depending on outbound liq for all other channels.
- Identify 0 traffic channels, move outbound liq to better channels.
- As I continue to open new channels, I want to have Sinks > 2M sats & plebs === 1M sats
- Close no channels
- Limit rebalancing to sinks, from high-trafficed channels stuck in high outbound
- Note those channels, they may not be good long term, as I want to keep routing through sinks then refreshing

## Fees:

- I want to target a the same outbound ppm for all of these channel (2 or 3), currently I think this is Nicehash, Paywithmoon,& LOOP. (Possibly WalletOfSatoshi)
- 0-10% IL = 0ppm
- 10-25% IL = 15ppm
- 25-50% IL = 30ppm
- 50-75% IL = 45ppm
- 75-90% IL = 60ppm
- 90-100% IL = 350ppm

### Run `charge-lnd`

```
charge-lnd --lnddir ~/umbrel/app-data/lightning/data/lnd -c ~/config/7.29.22/charge-lnd.config
```

### Open Questions

- Open a channel w/ LOOP
- Why am I getting no flow to WoS?
- Is PWM even a sink?

## Rebalance

### Send 75000 sats to nicehash @ 500ppm

I've been spamming this, but I want to automate it, so i keep going until it fails

```
rebalance -t 820149912445255681 --fee-ppm-limit 450 --reckless -a 75000 --min-local 0
```
