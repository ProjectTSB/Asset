#> asset:mob/0204.infernal_watcher/tick/attack/
#
# 攻撃処理
#
# @within function asset:mob/0204.infernal_watcher/tick/

# クールタイム
    execute if score @s 5O.AttackCT matches 1.. run scoreboard players remove @s 5O.AttackCT 1
    execute if score @s 5O.AttackCT matches 1.. run return fail

# ターゲット
    execute as @a[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0204.infernal_watcher/tick/attack/target
    execute unless entity @a[tag=5O.Target,limit=1] run return fail
# 演出
    execute if entity @s[tag=!5O.InFrenzy] run function asset:mob/0204.infernal_watcher/tick/attack/sfx
    execute if entity @s[tag= 5O.InFrenzy] run function asset:mob/0204.infernal_watcher/tick/attack/sfx_rage
# ダメージ
    data modify storage api: Argument.Damage set value 28f
    execute if entity @s[tag=5O.InFrenzy] run data modify storage api: Argument.Damage set value 42f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=5O.Target,limit=1] run function api:damage/
    function api:damage/reset
# クールタイム
    execute if entity @s[tag=!5O.InFrenzy] run scoreboard players set @s 5O.AttackCT 20
    execute if entity @s[tag= 5O.InFrenzy] run scoreboard players set @s 5O.AttackCT 15
# リセット
    tag @a[tag=5O.Target,limit=1] remove 5O.Target
