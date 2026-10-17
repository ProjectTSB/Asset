#> asset:effect/0402.celestial_star/tick/detonation/pop
#
# 先頭の対象に波が届いていれば、取り出して処理し、残りがあれば繰り返す
#
# @within function
#   asset:effect/0402.celestial_star/tick/detonation/
#   asset:effect/0402.celestial_star/tick/detonation/pop

# 先頭の対象の帯に、まだ波が届いていなければ終える
    execute store result score $402.Ring Temporary run data get storage asset:context this.Detonation.Queue[0].Ring
    execute if score $402.Ring Temporary > $402.Wave Temporary run return run scoreboard players reset $402.Ring Temporary
    scoreboard players reset $402.Ring Temporary

# 先頭の対象を取り出し、敵にはダメージを与え、味方は回復する
    data modify storage asset:temp 402.Target set from storage asset:context this.Detonation.Queue[0]
    data remove storage asset:context this.Detonation.Queue[0]
    data modify storage asset:temp 402.Target.X set from storage asset:context this.Pos.X
    data modify storage asset:temp 402.Target.Y set from storage asset:context this.Pos.Y
    data modify storage asset:temp 402.Target.Z set from storage asset:context this.Pos.Z
    execute if data storage asset:temp 402.Target.UserID run function asset:effect/0402.celestial_star/tick/detonation/heal
    execute if data storage asset:temp 402.Target.MobUUID run function asset:effect/0402.celestial_star/tick/detonation/damage.m with storage asset:temp 402.Target
    data remove storage asset:temp 402

# 残りの対象があれば繰り返す
    execute if data storage asset:context this.Detonation.Queue[0] run function asset:effect/0402.celestial_star/tick/detonation/pop
