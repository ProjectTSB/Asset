#> asset:effect/0299.achilles_tendon_rupture/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0299.achilles_tendon_rupture/_/tick

# クールタイム
    execute store result storage asset:context this.VfxInterval._ int 0.9999999999 run data get storage asset:context this.VfxInterval._
    execute unless data storage asset:context this.VfxInterval{_:0} run return fail
    data modify storage asset:context this.VfxInterval._ set from storage asset:context this.VfxInterval.Max

# 演出
    particle block nether_wart_block ~ ~0.2 ~ 0.2 0.1 0.2 0 3 normal @a[distance=..15]
