#> asset:artifact/0793.queen_bee_rocket/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/793/click/

# 演出
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 1
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.5
# 弾を撃つ
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/click/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/click/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/click/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/click/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/click/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/click/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/click/bee_summon
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0793.queen_bee_rocket/click/bee_summon
