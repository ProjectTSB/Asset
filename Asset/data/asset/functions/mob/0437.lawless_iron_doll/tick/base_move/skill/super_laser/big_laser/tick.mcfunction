#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/tick
#
# メインレーザーのTick処理。インターバルくらいしか入っていない。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/tick

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# インターバル用
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 付近の対象全てに、定期的にレーザーを放つ
    scoreboard players operation $Interval Temporary %= $5 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/shoot
    scoreboard players reset $Interval Temporary

# パーティクル
    particle minecraft:dust 0.8 0 1 1.5 ~ ~-0.5 ~ 1.0 1.0 1.0 1 10 force @a[distance=..64]
    particle minecraft:reverse_portal ~ ~ ~ 0 0 0 5 20

# サウンド
    playsound ogg:block.respawn_anchor.deplete2 hostile @a ~ ~ ~ 1 2
