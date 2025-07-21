#> asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/active
#
# スキル発動
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/

# マーカーを召喚し、プレイヤーの方に向ける
    summon marker ~ ~ ~ {Tags:["26.RotationMarker"]}
    tp @e[type=marker,tag=26.RotationMarker,distance=..0.01] ~ ~ ~ facing entity @p feet

# FieldOverrideへRotation[0]を入れる
    data modify storage api: Argument.FieldOverride.RotationX set from entity @e[type=marker,tag=26.RotationMarker,distance=..0.01,sort=nearest,limit=1] Rotation[0]

# 雷のダメージを設定
    execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Curtain.Normal
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Curtain.Hard

# サンダーカーテンを召喚
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.ID set value 2059
    function api:object/summon

# マーカーをkill
    kill @e[type=marker,tag=26.RotationMarker,distance=..0.01]

# モーション
    data modify storage lib: Argument.VectorMagnitude set value 1.2
    execute facing entity @p[gamemode=!spectator,distance=..50] eyes rotated ~-180 -20 run function lib:motion/
