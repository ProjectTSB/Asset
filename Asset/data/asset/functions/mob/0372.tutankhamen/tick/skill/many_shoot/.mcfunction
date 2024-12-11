#> asset:mob/0372.tutankhamen/tick/skill/many_shoot/
#
# 沢山球を撃つ
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# AJ
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/neutral/stop
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/soul_shot/play

# 演出
    #xecute if entity @s[scores={General.Mob.Tick=15}] run playsound item.trident.riptide_1 hostile @a ~ ~3 ~ 1 0.8 0
    #execute if entity @s[scores={General.Mob.Tick=25}] run playsound item.trident.riptide_1 hostile @a ~ ~3 ~ 1 1.0 0
    #execute if entity @s[scores={General.Mob.Tick=35}] run playsound item.trident.riptide_1 hostile @a ~ ~3 ~ 1 1.2 0

# ターゲット選定
    function asset:mob/0372.tutankhamen/tick/skill/common/select_taget

# ターゲットの方を向き続ける
    execute at @a[distance=..100] if score @s AC.TargetID = @p UserID run tag @p add Target
    execute facing entity @p[tag=Target] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    tp @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ ~ ~
    tag @p[tag=Target] remove Target

# 一定間隔で拡散して召喚
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if entity @s[scores={General.Mob.Tick=15..59}] if score $Interval Temporary matches 0 rotated ~ 0 positioned ^ ^3 ^ summon marker run function asset:mob/0372.tutankhamen/tick/skill/many_shoot/spread
    scoreboard players reset $Interval Temporary

# 共通リセット処理
    execute if entity @s[scores={General.Mob.Tick=128..}] run function asset:mob/0372.tutankhamen/tick/skill/reset
