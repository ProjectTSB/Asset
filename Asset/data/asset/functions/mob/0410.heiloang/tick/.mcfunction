#> asset:mob/0410.heiloang/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/410/tick

# TODO メイン処理
    # say tick

# スキル用イベントハンドラ
    function asset:mob/0410.heiloang/tick/event/

# Test
    # 頭部のlocator位置に移動
        # execute at @e[type=marker,tag=aj.heiloang_aj.locator.locator_head,limit=1,sort=nearest] run tp @s ~ ~-2 ~ ~ 0
