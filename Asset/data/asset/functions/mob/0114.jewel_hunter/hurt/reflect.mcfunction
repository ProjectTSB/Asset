#> asset:mob/0114.jewel_hunter/hurt/reflect
#
# 反射攻撃
#
# @within function asset:mob/0114.jewel_hunter/hurt/reflect_cooldown

#> Private
# @private
    #declare score_holder $Difficulty

# Attackerの方を向く
    tp @s ~ ~ ~ facing entity @p[tag=Attacker] eyes

# 難易度値に比例した弾速にする
# ノーマルまではSpeedは2固定
# それ以上なら難易度値だけ弾速が上がる
    function api:global_vars/get_difficulty
    data modify storage api: Argument.FieldOverride.Speed set from storage api: Return.Difficulty
    execute if predicate api:global_vars/difficulty/max/normal run data modify storage api: Argument.FieldOverride.Speed set value 2

# ダメージ設定
# ノーマルまではダメージを3に固定
# ハード以上なら5 *(難易度値 - 1)にする
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    execute store result storage api: Argument.FieldOverride.Damage int 5 run scoreboard players remove $Difficulty Temporary 1
    execute if predicate api:global_vars/difficulty/max/normal run data modify storage api: Argument.FieldOverride.Damage set value 3

# Object召喚
    data modify storage api: Argument.ID set value 2071
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=skeleton,tag=this,distance=..3,limit=1] MobUUID
    function api:object/summon

# リセット
    scoreboard players reset $Difficulty Temporary

# 消滅
    kill @s
