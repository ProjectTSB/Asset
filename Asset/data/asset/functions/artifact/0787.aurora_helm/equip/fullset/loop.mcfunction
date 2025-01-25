#> asset:artifact/0787.aurora_helm/equip/fullset/loop
#
# フルセット時のループ処理
#
# @within function
#   asset:artifact/0787.aurora_helm/equip/fullset/equip
#   asset:artifact/0787.aurora_helm/equip/fullset/main
#   asset:artifact/0787.aurora_helm/equip/rejoin_process

# メイン処理
    execute as @a[tag=LT.Fullset] at @s run function asset:artifact/0787.aurora_helm/equip/fullset/main