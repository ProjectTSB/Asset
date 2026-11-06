#> asset:mob/0372.tutankhamen/tick/stuck_revenge/
#
# ブロックでスタックしてしまったとき、周囲のブロックを壊して復帰する
#
# @within function asset:mob/0372.tutankhamen/tick/

# 頭がめり込んでいる場合、カウント付与。
    execute unless block ~ ~2.5 ~ #lib:no_collision/ run scoreboard players add @s AC.Count.Stuck 1

# 頭がめり込んでなければカウントが減少
    execute if block ~ ~2.5 ~ #lib:no_collision/ unless score @s AC.Count.Stuck matches ..-1 run scoreboard players remove @s AC.Count.Stuck 1

# カウント一定以上でガタガタ音がなる
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $5 Const
    execute if score $Interval Temporary matches 0 if score @s AC.Count.Stuck matches 20.. run function asset:mob/0372.tutankhamen/tick/stuck_revenge/anger

# カウントが更に貯まると反撃してくる
    execute if score @s AC.Count.Stuck matches 40.. run function asset:mob/0372.tutankhamen/tick/stuck_revenge/explosion
