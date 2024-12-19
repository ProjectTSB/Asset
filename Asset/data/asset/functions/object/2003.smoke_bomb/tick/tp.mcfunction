#> asset:object/2003.smoke_bomb/tick/tp
#
# TPさせる
#
# @within function asset:object/2003.smoke_bomb/tick/

#> temp
# @private
    #declare score_holder $2003.Y

# まずはマクロで使うPosを取得する
    execute store result storage asset:temp 2003.X double 0.0001 run data get storage asset:context this.Pos[0] 10000
    execute store result storage asset:temp 2003.Y double 0.0001 run data get storage asset:context this.Pos[1] 10000
    execute store result storage asset:temp 2003.Z double 0.0001 run data get storage asset:context this.Pos[2] 10000

# マクロを起動
    function asset:object/2003.smoke_bomb/tick/tp.m with storage asset:temp 2003

# ストレージリセット
    data remove storage asset:temp 2003

# スコアに保存
    execute store result score $2003.Y Temporary run data get storage asset:context this.Pos[1] 10000
    execute store result storage asset:context this.Pos[1] double 0.0001 run scoreboard players operation $2003.Y Temporary -= $250 Const

# スコアリセット
    scoreboard players reset $2003.Y Temporary
