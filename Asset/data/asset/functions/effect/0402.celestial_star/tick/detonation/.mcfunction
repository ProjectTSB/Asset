#> asset:effect/0402.celestial_star/tick/detonation/
#
# 起爆の波を1tickに2mずつ広げ、波が届いた距離の帯の対象のうち、敵にはダメージを与え、味方は回復する
# 対象を処理し終えたら、Effectを削除する
#
# @within function asset:effect/0402.celestial_star/tick/

# 波を2m広げ、5tickで範囲の端に届かせる
    execute store result score $402.Wave Temporary run data get storage asset:context this.Detonation.Wave
    execute store result storage asset:context this.Detonation.Wave int 1 run scoreboard players add $402.Wave Temporary 2

# 波が届いた帯の対象を、一覧の先頭から処理する
    execute if data storage asset:context this.Detonation.Queue[0] run function asset:effect/0402.celestial_star/tick/detonation/pop

# 対象が残っていなければ、Effectを削除する
    execute unless data storage asset:context this.Detonation.Queue[0] run data modify storage api: Argument.ID set value 402
    execute unless data storage asset:context this.Detonation.Queue[0] run function api:entity/mob/effect/remove/from_id
    execute unless data storage asset:context this.Detonation.Queue[0] run function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $402.Wave Temporary
