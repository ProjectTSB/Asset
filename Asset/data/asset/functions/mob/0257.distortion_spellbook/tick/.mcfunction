#> asset:mob/0257.distortion_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/257/tick

# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# super.tick
    function asset:mob/super.tick

# スコア増やす
    scoreboard players add @s General.Mob.Tick 1
# プレイヤーが周囲にいてスコア達したら実行
    execute if score @s General.Mob.Tick matches 135.. if entity @p[gamemode=!spectator,distance=..20] run function asset:mob/0257.distortion_spellbook/tick/summon_teleporter
# スコアリセット
    execute if score @s General.Mob.Tick matches 135.. run scoreboard players set @s General.Mob.Tick 0
