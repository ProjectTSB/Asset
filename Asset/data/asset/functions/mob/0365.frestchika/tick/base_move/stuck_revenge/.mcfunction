#> asset:mob/0365.frestchika/tick/base_move/stuck_revenge/
#
# ブロックでスタックしてしまったとき、周囲のブロックを壊して復帰する
#
# @within function asset:mob/0365.frestchika/tick/base_move/

# 頭がめり込んでいる場合、カウント付与。
    execute unless block ~ ~2.5 ~ #asset:mob/0365.frestchika/no_collision run scoreboard players add @s A5.Count.Stuck 1

# 頭がめり込んでなければカウントが減少
    execute if block ~ ~2.5 ~ #asset:mob/0365.frestchika/no_collision unless score @s A5.Count.Stuck matches ..-1 run scoreboard players remove @s A5.Count.Stuck 1

# カウント一定以上で音が鳴る
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $5 Const
    execute if score $Interval Temporary matches 0 if score @s A5.Count.Stuck matches 20.. run playsound minecraft:block.note_block.bit hostile @a ~ ~ ~ 1 0.5
    scoreboard players reset $Interval

# カウントが更に貯まると出現地点を中心にワープする
    execute if score @s A5.Count.Stuck matches 40.. run function asset:mob/0365.frestchika/tick/base_move/stuck_revenge/explosion
