#> asset:mob/0104.mad_scientist/tick/summon/
#
# ポーションを召喚
#
# @within function asset:mob/0104.mad_scientist/tick/throw_potion

# 実行者はマーカー

# プレイヤーの方を向く
    tp @s ~ ~ ~ facing entity @p feet

# 召喚する
    data modify storage api: Argument.ID set value 2070
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Element set from storage asset:context this.Element
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=skeleton,tag=this,distance=..2,limit=1] MobUUID
    function api:object/summon

# ハード以上なら追加で投げる
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0104.mad_scientist/tick/summon/addition

# 消滅
    kill @s
