#> asset:artifact/0647.thorn_armor/trigger/7.hurt
#
# 被ダメ時の特殊効果
#
# @within function asset:artifact/0647.thorn_armor/trigger/6.hurt_trigger

# クールタイム処理
    scoreboard players set @s HZ.CoolDown 20

# 演出
    # 相手に赤いパーティクル
        execute at @e[type=#lib:living,tag=Attacker,distance=..50] run particle falling_dust redstone_block ~ ~1.2 ~ 0.5 0.5 0.5 0 20 normal @a

    # 再帰使用：相手に棘を伸ばす演出
        execute positioned ~ ~1.5 ~ facing entity @e[type=#lib:living,tag=Attacker,distance=..50] eyes run function asset:artifact/0647.thorn_armor/trigger/8.exetend_thorn

# 被ダメージ時体力回復
    data modify storage api: Argument.Heal set value 4.0f
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# 被ダメージ時攻撃者にダメージ
    data modify storage api: Argument.Damage set value 75.0f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Attacker,distance=..50] run function api:damage/
    function api:damage/reset
