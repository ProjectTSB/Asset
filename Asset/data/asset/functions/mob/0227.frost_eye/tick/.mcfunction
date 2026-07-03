#> asset:mob/0227.frost_eye/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/227/tick

# 演出
    execute anchored eyes positioned ^ ^ ^-0.5 run particle snowflake ~ ~ ~ 0.2 0.2 0.2 0 1 normal @a

# 下の水を凍らせる
    execute if predicate api:area/is_breakable anchored eyes positioned ^ ^ ^ run fill ~0.5 ~-1 ~0.5 ~-0.5 ~-2 ~-0.5 frosted_ice replace #asset:mob/0227.frost_eye/freezable

# super.tick
    function asset:mob/super.tick

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={6C.AttackCT=1..}] 6C.AttackCT 1

# クールタイム中じゃないなら接触時に攻撃
    execute unless entity @s[scores={6C.AttackCT=1..}] anchored eyes positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!spectator,dx=0] as @p[tag=!PlayerShouldInvulnerable,dx=0] at @s run function asset:mob/0227.frost_eye/tick/attack
