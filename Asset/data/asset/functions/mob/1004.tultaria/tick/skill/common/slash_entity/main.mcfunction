#> asset:mob/1004.tultaria/tick/skill/common/slash_entity/main
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/common/slash_entity/tick

# スコア加算
    scoreboard players add @s General.Mob.Tick 1

# アニメ(通常)
    item replace entity @s[tag=!RW.IceSweep,scores={General.Mob.Tick=2}] weapon.mainhand with potion{CustomModelData:20237,CustomPotionColor:16711680}
    item replace entity @s[tag=!RW.IceSweep,scores={General.Mob.Tick=3}] weapon.mainhand with potion{CustomModelData:20238,CustomPotionColor:16711680}
    item replace entity @s[tag=!RW.IceSweep,scores={General.Mob.Tick=4}] weapon.mainhand with potion{CustomModelData:20239,CustomPotionColor:16711680}

# アニメ(氷)
    item replace entity @s[tag=RW.IceSweep,scores={General.Mob.Tick=2}] weapon.mainhand with potion{CustomModelData:20237,CustomPotionColor:5894655}
    item replace entity @s[tag=RW.IceSweep,scores={General.Mob.Tick=3}] weapon.mainhand with potion{CustomModelData:20238,CustomPotionColor:5894655}
    item replace entity @s[tag=RW.IceSweep,scores={General.Mob.Tick=4}] weapon.mainhand with potion{CustomModelData:20239,CustomPotionColor:5894655}

# アニメ(炎)
    item replace entity @s[tag=RW.FireSweep,scores={General.Mob.Tick=2}] weapon.mainhand with potion{CustomModelData:20237,CustomPotionColor:16731392}
    item replace entity @s[tag=RW.FireSweep,scores={General.Mob.Tick=3}] weapon.mainhand with potion{CustomModelData:20238,CustomPotionColor:16731392}
    item replace entity @s[tag=RW.FireSweep,scores={General.Mob.Tick=4}] weapon.mainhand with potion{CustomModelData:20239,CustomPotionColor:16731392}

# キル
    kill @s[scores={General.Mob.Tick=5..}]
