#> asset:mob/0372.tutankhamen/hurt/active_50per
#
#
#
# @within function asset:mob/0372.tutankhamen/hurt/

# フェイズ移行動作を実行
    tag @s add AC.Moveset.Transition

# 無敵になる
    data modify entity @s Invulnerable set value 1b
    tag @s add Uninterferable

# サウンド
    playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1.5 0.5
    playsound minecraft:entity.wither_skeleton.death hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1.5 0.8

# 全動作強制リセット
    function asset:mob/0372.tutankhamen/tick/skill/reset

# スコアリセット
    scoreboard players set @s General.Mob.Tick -1
