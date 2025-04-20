#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/check_player/
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/**

# 対象ののIDをstorageへ突っ込む
    execute store result storage asset:temp Temp.ID int 1 run scoreboard players get @s UserID

# マクロで比較する
    function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/check_player/m with storage asset:temp Temp

# リセット
    data remove storage asset:temp Temp
