#> asset:object/2247.lawless_iron_giant_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2247/tick

#> インターバル用
# @private
#declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# AJモデルとの紐づけ
    execute at @s run tag @e[type=item_display,tag=C5.ModelRoot,distance=..64,sort=nearest,limit=1] add 2247.ModelRoot.Target

# モデルを追従
    execute at @s run tp @e[type=item_display,tag=2247.ModelRoot.Target,distance=..64,sort=nearest,limit=1] ~ ~ ~ ~ 0

# 数Tickごとに爆発
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    execute if score @s General.Object.Tick matches ..20 run scoreboard players operation $Interval Temporary %= $20 Const
    execute if score @s General.Object.Tick matches 21..60 run scoreboard players operation $Interval Temporary %= $10 Const
    execute if score @s General.Object.Tick matches 61..100 run scoreboard players operation $Interval Temporary %= $5 Const
    execute if score @s General.Object.Tick matches ..60 if score $Interval Temporary matches 0 positioned ~ ~1.5 ~ run function asset:object/2247.lawless_iron_giant_death/tick/vfx/normal
    execute if score @s General.Object.Tick matches 61.. if score $Interval Temporary matches 0 positioned ~ ~1.5 ~ run function asset:object/2247.lawless_iron_giant_death/tick/vfx/near_end

# パーツ爆散
    execute if score @s General.Object.Tick matches 28 run function asset:object/2247.lawless_iron_giant_death/tick/vfx/break_part
    execute if score @s General.Object.Tick matches 53 run function asset:object/2247.lawless_iron_giant_death/tick/vfx/break_part
    execute if score @s General.Object.Tick matches 99 run function asset:object/2247.lawless_iron_giant_death/tick/vfx/break_part

# 消失
    execute if score @s General.Object.Tick matches 130 run function asset:object/2247.lawless_iron_giant_death/tick/end

# AJモデルとの紐づけ解除
    execute at @s run tag @e[type=item_display,tag=2247.ModelRoot.Target,distance=..0.01,sort=nearest,limit=1] remove 2247.ModelRoot.Target
