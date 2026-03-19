#> asset:mob/0059.jack_o_lantern/tick/skill/dps_check/
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 1tick目にやること
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0059.jack_o_lantern/tick/skill/dps_check/first_tick

# 確率で笑う
    execute if predicate lib:random_pass_per/1 if predicate lib:random_pass_per/30 run playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

# 常に最寄りのプレイヤーを見る
    execute at @s facing entity @p[gamemode=!spectator,distance=..64] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 回転
    # execute if score @s General.Mob.Tick matches 1..240 run function asset:mob/0059.jack_o_lantern/tick/skill/dps_check/spin

# 無敵化
   #  execute if score @s General.Mob.Tick matches 241 run function asset:mob/0059.jack_o_lantern/tick/skill/common/invulnerable/start

# 終了
    execute if score @s General.Mob.Tick matches 400.. run function asset:mob/0059.jack_o_lantern/tick/skill/reset
