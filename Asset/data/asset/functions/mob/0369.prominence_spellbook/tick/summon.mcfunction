#> asset:mob/0369.prominence_spellbook/tick/summon
#
# 魔法を召喚する
#
# @within function asset:mob/0369.prominence_spellbook/tick/ready

#> Private
# @private
    #declare score_holder $Difficulty

# 最寄りのプレイヤーの方を見る
    tp @s ~ ~ ~ facing entity @p eyes

# ハード以上なら追加でAddBlastをtrueへ
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.AddBlast set value true

# 弾を召喚
    data modify storage api: Argument.ID set value 2047
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=zombie,tag=this,distance=..3,limit=1] MobUUID
    function api:object/summon


# 消滅
    kill @s
