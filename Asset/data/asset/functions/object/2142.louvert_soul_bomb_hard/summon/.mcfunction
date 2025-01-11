#> asset:object/2142.louvert_soul_bomb_hard/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2142/summon

#> tag
# @private
    #declare tag 2142.SoulBombhard

# 元となるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["ObjectInit","2142.SoulBombhard"]}
