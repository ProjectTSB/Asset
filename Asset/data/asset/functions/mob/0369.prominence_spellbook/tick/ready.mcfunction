#> asset:mob/0369.prominence_spellbook/tick/ready
#
# 予備動作
#
# @within function asset:mob/0369.prominence_spellbook/tick/

# 周囲にプレイヤーがいなければリセット
    execute if entity @s[scores={General.Mob.Tick=0}] unless entity @p[distance=..20] run function asset:mob/0369.prominence_spellbook/tick/reset

# 予備動作
    execute if entity @s[scores={General.Mob.Tick=1..2}] facing entity @p eyes anchored eyes positioned ^ ^ ^0.2 run function asset:mob/0369.prominence_spellbook/tick/vfx/1
    execute if entity @s[scores={General.Mob.Tick=4..5}] facing entity @p eyes anchored eyes positioned ^ ^ ^0.2 run function asset:mob/0369.prominence_spellbook/tick/vfx/2
    execute if entity @s[scores={General.Mob.Tick=7..8}] facing entity @p eyes anchored eyes positioned ^ ^ ^0.2 run function asset:mob/0369.prominence_spellbook/tick/vfx/3
    execute if entity @s[scores={General.Mob.Tick=1..8}] run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.1 1.7 0

# 魔法を召喚
# execute summonを使って実行する
    execute if entity @s[scores={General.Mob.Tick=10..}] anchored eyes positioned ^ ^ ^0.2 summon marker run function asset:mob/0369.prominence_spellbook/tick/summon

# リセット
    execute if entity @s[scores={General.Mob.Tick=10..}] run function asset:mob/0369.prominence_spellbook/tick/reset
