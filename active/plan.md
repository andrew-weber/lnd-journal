# 07.31.22-20:30:18 
# Plan

## Goal

I have some channels that are sitting completely still at ~100% OB even with 0ppm. I want to start identifying those nodes, and to setup a script that will allow me to try to drain them into my more profitable nodes (WoS, Nicehash, & lnd-11).

## Rebalance

I think I will need to create a wrapper around my rebalance script that tries to drain these channels.

```
BAD_CHANNELS = [bc1, bc2 bc3, ...]
GOOD_CHANNELS = [gc1, gc2, ...]

BAD_CHANNELS.forEach(badChannel => {
  GOOD_CHANNEL.forEach(goodChannel => {
    iterativeRebalance(badChannel, goodChannel, amount)
  })
})

iterativeRebalance = (goodChannel, badChannel, amount) => {
  doRebalance = true
  while(doRebalnce) {
    doRebalance =  // rebalance is successfull
  }
}
```

### Notable Channels

| name                       | id  | good/bad | fix_ppm |
| -------------------------- | --- | -------- | ------- |
| WalletOfSatoshi.com        |     |          |
| LNBIG.com [lnd-11]         |     |          |
| ln.nicehash.com [Nicehash] |     |          |

## Fees

Move WoS & LND-11 to fixed `fee_pmm=369`
