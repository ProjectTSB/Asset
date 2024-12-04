#> asset:artifact/0172.icicle/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/172/click/

# 演出
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0

# 着弾地点にマーカー召喚
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0172.icicle/click/4.block_check

# タグを消す
    tag @s remove Landing

# スケジュール開始
    schedule function asset:artifact/0172.icicle/click/laser/schedule 1t replace
