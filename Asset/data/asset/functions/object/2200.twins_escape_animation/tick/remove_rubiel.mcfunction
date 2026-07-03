#> asset:object/2200.twins_escape_animation/tick/remove_rubiel
#
# Objectのtick時の処理
#
# @within asset:object/2200.twins_escape_animation/tick/event_rubiel

# 消去
    # ボスドロ
        function asset:object/2200.twins_escape_animation/tick/drop/rubiel.m with storage asset:context this.Pos
    # 消去
        function animated_java:twins_rubiel/remove/this
