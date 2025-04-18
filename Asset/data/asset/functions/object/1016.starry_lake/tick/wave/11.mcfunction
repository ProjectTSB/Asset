#> asset:object/1016.starry_lake/tick/wave/11
#
# 波の演出と処理11
#
# @within function asset:object/1016.starry_lake/tick/

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=4.51..5] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=1,dz=14] run tag @s add 1016.Target

# 円 11
particle dust 0.2 0.2 0.7 4 ^0 ^ ^-5 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^0.71157 ^ ^-4.94911 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^1.40866 ^ ^-4.79746 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^2.07708 ^ ^-4.54816 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^2.7032 ^ ^-4.20627 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^3.2743 ^ ^-3.77875 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^3.77875 ^ ^-3.2743 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.20627 ^ ^-2.7032 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.54816 ^ ^-2.07708 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.79746 ^ ^-1.40866 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.94911 ^ ^-0.71157 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.94911 ^ ^0.71157 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.79746 ^ ^1.40866 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.54816 ^ ^2.07708 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.20627 ^ ^2.7032 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^3.77875 ^ ^3.2743 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^3.2743 ^ ^3.77875 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^2.7032 ^ ^4.20627 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^2.07708 ^ ^4.54816 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^1.40866 ^ ^4.79746 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^0.71157 ^ ^4.94911 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^0 ^ ^5 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-0.71157 ^ ^4.94911 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-1.40866 ^ ^4.79746 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-2.07708 ^ ^4.54816 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-2.7032 ^ ^4.20627 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-3.2743 ^ ^3.77875 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-3.77875 ^ ^3.2743 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.20627 ^ ^2.7032 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.54816 ^ ^2.07708 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.79746 ^ ^1.40866 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.94911 ^ ^0.71157 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.94911 ^ ^-0.71157 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.79746 ^ ^-1.40866 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.54816 ^ ^-2.07708 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.20627 ^ ^-2.7032 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-3.77875 ^ ^-3.2743 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-3.2743 ^ ^-3.77875 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-2.7032 ^ ^-4.20627 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-2.07708 ^ ^-4.54816 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-1.40866 ^ ^-4.79746 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-0.71157 ^ ^-4.94911 0 0 0 0 1
