#> asset:mob/0323.mini_elder_guardian/tick/event/attack/
#
#
#
# @within function asset:mob/0323.mini_elder_guardian/tick/

# Tick加算
    scoreboard players add @s General.Mob.Tick 1

# プレイヤーのターゲティング
    execute if score @s General.Mob.Tick matches 0..39 anchored eyes facing entity @p[gamemode=!spectator,distance=..64] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s eyes positioned as @s anchored feet positioned ^ ^ ^ run tp @s ^ ^ ^ ~ ~
    execute if score @s General.Mob.Tick matches 40.. anchored eyes facing entity @p[gamemode=!spectator,distance=..64] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1500 facing entity @s eyes positioned as @s anchored feet positioned ^ ^ ^ run tp @s ^ ^ ^ ~ ~

# 照射開始動作
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/0323.mini_elder_guardian/tick/event/attack/start

# レーザー照射
    execute if score @s General.Mob.Tick matches 40..159 anchored eyes positioned ^ ^ ^ run function asset:mob/0323.mini_elder_guardian/tick/event/attack/laser/

# 攻撃終了後、ちょっと泳ぐ
    execute if score @s General.Mob.Tick matches 160..240 run function asset:mob/call.m {method:"get_speed"}
    execute at @s if score @s General.Mob.Tick matches 160..240 run function asset:mob/call.m {method:"rotate"}
    execute at @s if score @s General.Mob.Tick matches 160..240 run function asset:mob/call.m {method:"move"}

# 攻撃動作終了
    execute if score @s General.Mob.Tick matches 240.. run function asset:mob/0323.mini_elder_guardian/tick/event/attack/reset
