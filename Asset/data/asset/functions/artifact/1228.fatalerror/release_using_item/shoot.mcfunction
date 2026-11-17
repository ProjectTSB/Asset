#> asset:artifact/1228.fatalerror/release_using_item/shoot
#
# チャージ段階に応じたレーザーを放つ
#
# @within function asset:artifact/1228.fatalerror/release_using_item/3.main

# チャージ段階ごとに発射する
    execute if data storage api: Return.Effect{Stack:2} anchored eyes positioned ^-0.35 ^-0.15 ^0.5 run return run function asset:artifact/1228.fatalerror/release_using_item/charge_shot/shot
    execute anchored eyes positioned ^-0.35 ^-0.15 ^0.5 run function asset:artifact/1228.fatalerror/release_using_item/shot/shot
