#> asset:mob/0210.aurora_eye/tick/summon_bullet
#
# オーロラ弾を発射する
#
# @within function asset:mob/0210.aurora_eye/tick/

# プレイヤーの方を向く
    tp @s ~ ~ ~ facing entity @p eyes

# RotationをFieldOvrrideへ

# ノーマル以上ならデバフを付与するように
    execute if predicate api:global_vars/difficulty/min/2_hard run data modify storage api: Argument.FieldOverride.Debuff set value true

# (難易度値 - 1)だけ付与するスタックを設定
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    execute store result storage api: Argument.FieldOverride.Stack int 1 run scoreboard players remove $Difficulty Temporary 1

# MobUUID設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players remove $Difficulty Temporary 1

# 発射
    data modify storage api: Argument.ID set value 2076
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.BulletDamage
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    function api:object/summon

# リセット
    scoreboard players reset @e[type=zombie,tag=this,distance=..3,limit=1] 5U.Shoot
    scoreboard players reset $Difficulty Temporary

# 弾召喚用markerを消滅
    kill @s
