#> asset:artifact/1029.conviction_bone/trigger/sword/sword
#
#
#
# @within function asset:artifact/1029.conviction_bone/trigger/sword/schedule

# 自分にタグ付与
    tag @s add SL.This

# 回転する
# 持ち主を起点にTP
    execute as @a if score @s UserID = @e[type=item_display,tag=SL.This,limit=1] SL.UserID positioned as @s run tp @e[type=item_display,tag=SL.This,limit=1] ~ ~ ~ ~20 ~

# 寿命を減らす
    scoreboard players remove @s SL.SwordTime 1
# クールを増やす
    scoreboard players add @s SL.CoolTime 1

# ダメージ
    execute if score @s SL.CoolTime matches 4 run function asset:artifact/1029.conviction_bone/trigger/sword/hit

# 寿命が来たら発動するやつ。プレイヤーが発動する内容
    execute if score @s SL.SwordTime matches 0 as @a if score @s UserID = @e[type=item_display,tag=SL.This,limit=1] SL.UserID run function asset:artifact/1029.conviction_bone/trigger/sword/sword_kill
    execute if score @s SL.SwordTime matches ..0 run kill @s

    tag @s remove SL.This
