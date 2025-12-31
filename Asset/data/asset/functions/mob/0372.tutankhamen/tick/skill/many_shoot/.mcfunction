#> asset:mob/0372.tutankhamen/tick/skill/many_shoot/
#
# 沢山球を撃つ
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# AJ
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/soul_shot/tween {to_frame:5 ,duration:5}

# 演出
    execute if score @s General.Mob.Tick matches 15..35 run particle dust 0 0.7 0.7 1 ~ ~3 ~ 1 0 1 0 5
    execute if score @s General.Mob.Tick matches 15 run playsound item.trident.riptide_1 hostile @a ~ ~3 ~ 2 0.8
    execute if score @s General.Mob.Tick matches 25 run playsound item.trident.riptide_1 hostile @a ~ ~3 ~ 2 1.0
    execute if score @s General.Mob.Tick matches 35 run playsound item.trident.riptide_1 hostile @a ~ ~3 ~ 2 1.2

# 攻撃開始
    execute if score @s General.Mob.Tick matches 60 run function asset:mob/0372.tutankhamen/tick/skill/many_shoot/start

# ターゲット選定
    function asset:mob/0372.tutankhamen/tick/skill/common/select_target

# ターゲットの方を向き続ける
    execute as @a[gamemode=!spectator,distance=..100] if score @e[type=wither_skeleton,tag=this,distance=..0.01,limit=1] AC.TargetID = @s UserID run tag @s add Target
    execute facing entity @a[tag=Target,distance=..100,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    tp @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ ~ ~
    tag @a[tag=Target,distance=..100,limit=1] remove Target

# 一定間隔で拡散して召喚
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score @s General.Mob.Tick matches 15..59 if score $Interval Temporary matches 0 rotated ~ 0 positioned ^ ^3 ^ summon marker run function asset:mob/0372.tutankhamen/tick/skill/many_shoot/spread
    scoreboard players reset $Interval Temporary

# 共通リセット処理
    execute if score @s General.Mob.Tick matches 80 run function asset:mob/0372.tutankhamen/tick/skill/reset
