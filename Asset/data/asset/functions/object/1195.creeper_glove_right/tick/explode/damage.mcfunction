#> asset:object/1195.creeper_glove_right/tick/explode/damage
#
# ダメージ処理
#
# @within function asset:object/1195.creeper_glove_right/tick/explode/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    execute as @p[tag=1195.Owner,distance=..64] run function api:damage/modifier
    # 追加当たり判定には1回だけ当たるようにして与える
    function api:damage/single_damage_session/open
    execute positioned ~ ~-0.9 ~ as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,tag=!Death,distance=..2] run function api:damage/
    function api:damage/single_damage_session/close
    function api:damage/reset
