#> asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/end
#
# 終了処理
#
# @within function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/

# 通常終了
    scoreboard players set @s 9H.AnimationNum 154

# スコア初期化
    scoreboard players set @s 9H.AnimationTick 0

# ディスプレイキル
    kill @e[type=item_display,tag=9H.Final.Display.Bullet,distance=..64]