#> asset:effect/0433.coreflame/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0433.coreflame/_/tick

# バリア付与直後なら待機(付与したバリアが反映されるまでに再発動しないように)
    execute unless data storage asset:context this{Wait:0} store result storage asset:context this.Wait int 0.9999999999 run data get storage asset:context this.Wait

# バリア量を毎tick検知し、一定以下ならバリア付与
    execute if data storage asset:context this{Wait:0} run function asset:effect/0433.coreflame/tick/check
