#> asset:artifact/1029.conviction_bone/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1029.conviction_bone/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ~ ~0.5 ~ rotated ~ 0 run function asset:artifact/1029.conviction_bone/trigger/particle.1
    playsound minecraft:entity.puffer_fish.blow_up neutral @a ~ ~ ~ 1 1.3

# 魚召喚
    summon item_display ~ ~ ~ {teleport_duration:1,Tags:["SL.Fish","SL.First","Object"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,4f,0f],scale:[5f,5f,5f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20349}}}

# 魚の寿命を設定する
    scoreboard players set @e[type=item_display,tag=SL.First] SL.FishTime 60

# ユーザーID適応
    scoreboard players operation @e[type=item_display,tag=SL.First] SL.UserID = @s UserID

# タグを消す
    tag @e[type=item_display,tag=SL.First] remove SL.First

# 再帰先へ飛ばす
    execute as @e[type=item_display,tag=SL.Fish,limit=1] run function asset:artifact/1029.conviction_bone/trigger/sword/schedule
