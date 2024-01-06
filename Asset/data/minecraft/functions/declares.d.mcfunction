#> minecraft:declares.d
# @private

#> declare
# @within **
    #alias vector shulkerA 10000 0 10000                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/load_once.mcfunction#L41
    #alias vector shulkerB 10000 1 10000                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/load_once.mcfunction#L42
    #alias vector worldSpawn 23 3 24                                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/load_once.mcfunction#L43
    #declare advancement asset_manager:artifact/attack/melee                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/advancements/artifact/attack/melee.json#L1
    #declare advancement asset_manager:artifact/attack/projectile                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/advancements/artifact/attack/projectile.json#L1
    #declare advancement asset_manager:artifact/damage/explode                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/advancements/artifact/damage/explode.json#L1
    #declare advancement asset_manager:artifact/damage/fire                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/advancements/artifact/damage/fire.json#L1
    #declare advancement asset_manager:artifact/damage/from_entity/                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/advancements/artifact/damage/from_entity/.json#L1
    #declare advancement asset_manager:artifact/damage/from_entity/blocked            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/advancements/artifact/damage/from_entity/blocked.json#L1
    #declare advancement asset_manager:artifact/damage/from_entity/melee              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/advancements/artifact/damage/from_entity/melee.json#L1
    #declare advancement asset_manager:artifact/damage/from_entity/projectile         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/advancements/artifact/damage/from_entity/projectile.json#L1
    #declare advancement asset_manager:artifact/killed/melee                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/advancements/artifact/killed/melee.json#L1
    #declare advancement asset_manager:artifact/killed/projectile                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/advancements/artifact/killed/projectile.json#L1
    #declare advancement core:handler/consume_item                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/advancements/handler/consume_item.json#L1
    #declare advancement core:handler/damage                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/advancements/handler/damage.json#L1
    #declare advancement core:handler/inventory_change                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/advancements/handler/inventory_change.json#L1
    #declare advancement core:handler/killed                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/advancements/handler/killed.json#L1
    #declare advancement core:handler/using_item                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/advancements/handler/using_item.json#L1
    #declare advancement mob_manager:entity_finder/check_attacked_entity              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/mob_manager/advancements/entity_finder/check_attacked_entity.json#L1
    #declare advancement mob_manager:entity_finder/check_attacking_entity             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/mob_manager/advancements/entity_finder/check_attacking_entity.json#L1
    #declare advancement score_to_health:player_tick                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/ScoreToHealth/data/score_to_health/advancements/player_tick.json#L1
    #declare function api:artifact/box/from_id                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/artifact/box/from_id.mcfunction#L1
    #declare function api:artifact/box/from_rarity                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/artifact/box/from_rarity.mcfunction#L1
    #declare function api:artifact/give/from_id                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/artifact/give/from_id.mcfunction#L1
    #declare function api:artifact/give/from_rarity                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/artifact/give/from_rarity.mcfunction#L1
    #declare function api:artifact/replace/from_id                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/artifact/replace/from_id.mcfunction#L1
    #declare function api:artifact/replace/from_rarity                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/artifact/replace/from_rarity.mcfunction#L1
    #declare function api:artifact/spawn/from_id                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/artifact/spawn/from_id.mcfunction#L1
    #declare function api:artifact/spawn/from_rarity                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/artifact/spawn/from_rarity.mcfunction#L1
    #declare function api:common/arguments/pop                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/common/arguments/pop.mcfunction#L1
    #declare function api:common/arguments/stash                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/common/arguments/stash.mcfunction#L1
    #declare function api:damage/                                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/damage/.mcfunction#L1
    #declare function api:damage/modifier                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/damage/modifier.mcfunction#L1
    #declare function api:damage/modifier_continuation                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/damage/modifier_continuation.mcfunction#L1
    #declare function api:damage/reset                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/damage/reset.mcfunction#L1
    #declare function api:data_get/abilities                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/abilities.mcfunction#L1
    #declare function api:data_get/absorption_amount                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/absorption_amount.mcfunction#L1
    #declare function api:data_get/active_effects                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/active_effects.mcfunction#L1
    #declare function api:data_get/air                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/air.mcfunction#L1
    #declare function api:data_get/attributes                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/attributes.mcfunction#L1
    #declare function api:data_get/brain                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/brain.mcfunction#L1
    #declare function api:data_get/custom_name                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/custom_name.mcfunction#L1
    #declare function api:data_get/custom_name_visible                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/custom_name_visible.mcfunction#L1
    #declare function api:data_get/data_version                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/data_version.mcfunction#L1
    #declare function api:data_get/death_time                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/death_time.mcfunction#L1
    #declare function api:data_get/dimension                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/dimension.mcfunction#L1
    #declare function api:data_get/ender_items                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/ender_items.mcfunction#L1
    #declare function api:data_get/entered_nether_position                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/entered_nether_position.mcfunction#L1
    #declare function api:data_get/fall_distance                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/fall_distance.mcfunction#L1
    #declare function api:data_get/fall_flying                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/fall_flying.mcfunction#L1
    #declare function api:data_get/fire                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/fire.mcfunction#L1
    #declare function api:data_get/food_exhaustion_level                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/food_exhaustion_level.mcfunction#L1
    #declare function api:data_get/food_level                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/food_level.mcfunction#L1
    #declare function api:data_get/food_saturation_level                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/food_saturation_level.mcfunction#L1
    #declare function api:data_get/food_tick_timer                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/food_tick_timer.mcfunction#L1
    #declare function api:data_get/glowing                                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/glowing.mcfunction#L1
    #declare function api:data_get/health                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/health.mcfunction#L1
    #declare function api:data_get/hurt_time                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/hurt_time.mcfunction#L1
    #declare function api:data_get/id                                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/id.mcfunction#L1
    #declare function api:data_get/inventory                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/inventory.mcfunction#L1
    #declare function api:data_get/invulnerable                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/invulnerable.mcfunction#L1
    #declare function api:data_get/motion                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/motion.mcfunction#L1
    #declare function api:data_get/no_ai                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/no_ai.mcfunction#L1
    #declare function api:data_get/no_gravity                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/no_gravity.mcfunction#L1
    #declare function api:data_get/on_ground                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/on_ground.mcfunction#L1
    #declare function api:data_get/passengers                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/passengers.mcfunction#L1
    #declare function api:data_get/player_game_type                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/player_game_type.mcfunction#L1
    #declare function api:data_get/portal_cooldown                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/portal_cooldown.mcfunction#L1
    #declare function api:data_get/pos                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/pos.mcfunction#L1
    #declare function api:data_get/previous_player_game_type                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/previous_player_game_type.mcfunction#L1
    #declare function api:data_get/recipe_book                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/recipe_book.mcfunction#L1
    #declare function api:data_get/root_vehicle                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/root_vehicle.mcfunction#L1
    #declare function api:data_get/rotation                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/rotation.mcfunction#L1
    #declare function api:data_get/score                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/score.mcfunction#L1
    #declare function api:data_get/seen_credits                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/seen_credits.mcfunction#L1
    #declare function api:data_get/selected_item                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/selected_item.mcfunction#L1
    #declare function api:data_get/selected_item_slot                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/selected_item_slot.mcfunction#L1
    #declare function api:data_get/shoulder_entity_left                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/shoulder_entity_left.mcfunction#L1
    #declare function api:data_get/shoulder_entity_right                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/shoulder_entity_right.mcfunction#L1
    #declare function api:data_get/silent                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/silent.mcfunction#L1
    #declare function api:data_get/sleep_timer                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/sleep_timer.mcfunction#L1
    #declare function api:data_get/sleeping_x                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/sleeping_x.mcfunction#L1
    #declare function api:data_get/sleeping_y                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/sleeping_y.mcfunction#L1
    #declare function api:data_get/sleeping_z                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/sleeping_z.mcfunction#L1
    #declare function api:data_get/spawn_forced                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/spawn_forced.mcfunction#L1
    #declare function api:data_get/spawn_x                                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/spawn_x.mcfunction#L1
    #declare function api:data_get/spawn_y                                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/spawn_y.mcfunction#L1
    #declare function api:data_get/spawn_z                                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/spawn_z.mcfunction#L1
    #declare function api:data_get/tags                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/tags.mcfunction#L1
    #declare function api:data_get/team                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/team.mcfunction#L1
    #declare function api:data_get/uuid                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/uuid.mcfunction#L1
    #declare function api:data_get/xp_level                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/xp_level.mcfunction#L1
    #declare function api:data_get/xp_p                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/xp_p.mcfunction#L1
    #declare function api:data_get/xp_seed                                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/xp_seed.mcfunction#L1
    #declare function api:data_get/xp_total                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/data_get/xp_total.mcfunction#L1
    #declare function api:global_vars/get_difficulty                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/global_vars/get_difficulty.mcfunction#L1
    #declare function api:heal/                                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/heal/.mcfunction#L1
    #declare function api:heal/modifier                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/heal/modifier.mcfunction#L1
    #declare function api:heal/reset                                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/heal/reset.mcfunction#L1
    #declare function api:inventory/clear                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/inventory/clear.mcfunction#L1
    #declare function api:inventory/get_size                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/inventory/get_size.mcfunction#L1
    #declare function api:inventory/refer_selected_item_slot/get_item                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/inventory/refer_selected_item_slot/get_item.mcfunction#L1
    #declare function api:inventory/refer_selected_item_slot/replace_air              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/inventory/refer_selected_item_slot/replace_air.mcfunction#L1
    #declare function api:inventory/refer_selected_item_slot/replace_from_shulker_box from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/inventory/refer_selected_item_slot/replace_from_shulker_box.mcfunction#L1
    #declare function api:lost_items/get_length                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/lost_items/get_length.mcfunction#L1
    #declare function api:lost_items/give                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/lost_items/give.mcfunction#L1
    #declare function api:mob/get_health_percent                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/mob/get_health_percent.mcfunction#L1
    #declare function api:mob/get_max_health                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/mob/get_max_health.mcfunction#L1
    #declare function api:mob/get_max_health_multiplier                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/mob/get_max_health_multiplier.mcfunction#L1
    #declare function api:mob/lore/get                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/mob/lore/get.mcfunction#L1
    #declare function api:mob/summon                                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/mob/summon.mcfunction#L1
    #declare function api:modifier/attack/base/add                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/base/add.mcfunction#L1
    #declare function api:modifier/attack/base/get                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/base/get.mcfunction#L1
    #declare function api:modifier/attack/base/remove                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/base/remove.mcfunction#L1
    #declare function api:modifier/attack/fire/add                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/fire/add.mcfunction#L1
    #declare function api:modifier/attack/fire/get                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/fire/get.mcfunction#L1
    #declare function api:modifier/attack/fire/remove                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/fire/remove.mcfunction#L1
    #declare function api:modifier/attack/magic/add                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/magic/add.mcfunction#L1
    #declare function api:modifier/attack/magic/get                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/magic/get.mcfunction#L1
    #declare function api:modifier/attack/magic/remove                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/magic/remove.mcfunction#L1
    #declare function api:modifier/attack/physical/add                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/physical/add.mcfunction#L1
    #declare function api:modifier/attack/physical/get                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/physical/get.mcfunction#L1
    #declare function api:modifier/attack/physical/remove                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/physical/remove.mcfunction#L1
    #declare function api:modifier/attack/thunder/add                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/thunder/add.mcfunction#L1
    #declare function api:modifier/attack/thunder/get                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/thunder/get.mcfunction#L1
    #declare function api:modifier/attack/thunder/remove                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/thunder/remove.mcfunction#L1
    #declare function api:modifier/attack/water/add                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/water/add.mcfunction#L1
    #declare function api:modifier/attack/water/get                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/water/get.mcfunction#L1
    #declare function api:modifier/attack/water/remove                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/attack/water/remove.mcfunction#L1
    #declare function api:modifier/defense/base/add                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/base/add.mcfunction#L1
    #declare function api:modifier/defense/base/get                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/base/get.mcfunction#L1
    #declare function api:modifier/defense/base/remove                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/base/remove.mcfunction#L1
    #declare function api:modifier/defense/fire/add                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/fire/add.mcfunction#L1
    #declare function api:modifier/defense/fire/get                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/fire/get.mcfunction#L1
    #declare function api:modifier/defense/fire/remove                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/fire/remove.mcfunction#L1
    #declare function api:modifier/defense/magic/add                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/magic/add.mcfunction#L1
    #declare function api:modifier/defense/magic/get                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/magic/get.mcfunction#L1
    #declare function api:modifier/defense/magic/remove                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/magic/remove.mcfunction#L1
    #declare function api:modifier/defense/physical/add                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/physical/add.mcfunction#L1
    #declare function api:modifier/defense/physical/get                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/physical/get.mcfunction#L1
    #declare function api:modifier/defense/physical/remove                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/physical/remove.mcfunction#L1
    #declare function api:modifier/defense/thunder/add                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/thunder/add.mcfunction#L1
    #declare function api:modifier/defense/thunder/get                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/thunder/get.mcfunction#L1
    #declare function api:modifier/defense/thunder/remove                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/thunder/remove.mcfunction#L1
    #declare function api:modifier/defense/water/add                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/water/add.mcfunction#L1
    #declare function api:modifier/defense/water/get                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/water/get.mcfunction#L1
    #declare function api:modifier/defense/water/remove                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/defense/water/remove.mcfunction#L1
    #declare function api:modifier/heal/add                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/heal/add.mcfunction#L1
    #declare function api:modifier/heal/get                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/heal/get.mcfunction#L1
    #declare function api:modifier/heal/remove                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/heal/remove.mcfunction#L1
    #declare function api:modifier/mp_regen/add                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/mp_regen/add.mcfunction#L1
    #declare function api:modifier/mp_regen/get                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/mp_regen/get.mcfunction#L1
    #declare function api:modifier/mp_regen/remove                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/mp_regen/remove.mcfunction#L1
    #declare function api:modifier/receive_heal/add                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/receive_heal/add.mcfunction#L1
    #declare function api:modifier/receive_heal/get                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/receive_heal/get.mcfunction#L1
    #declare function api:modifier/receive_heal/remove                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/modifier/receive_heal/remove.mcfunction#L1
    #declare function api:mp/check                                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/mp/check.mcfunction#L1
    #declare function api:mp/fluctuation                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/mp/fluctuation.mcfunction#L1
    #declare function api:mp/get_current                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/mp/get_current.mcfunction#L1
    #declare function api:mp/get_max                                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/mp/get_max.mcfunction#L1
    #declare function api:mp/set                                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/mp/set.mcfunction#L1
    #declare function api:player_vector/get                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/player_vector/get.mcfunction#L1
    #declare function api:rom/please                                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/rom/please.mcfunction#L1
    #declare function api:spawner/subtract_hp                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/spawner/subtract_hp.mcfunction#L1
    #declare function api:teleporter/set_activation_state/from_id                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/teleporter/set_activation_state/from_id.mcfunction#L1
    #declare function api:teleporter/set_activation_state/from_nearest                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/teleporter/set_activation_state/from_nearest.mcfunction#L1
    #declare function debug:stopwatch.start                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/debug/functions/stopwatch.start.mcfunction#L1
    #declare function debug:stopwatch.stop                                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/debug/functions/stopwatch.stop.mcfunction#L1
    #declare function debug:tps/watch                                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/debug/functions/tps/watch.mcfunction#L1
    #declare function lib:array/compare                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/compare.mcfunction#L1
    #declare function lib:array/compare_single                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/compare_single.mcfunction#L1
    #declare function lib:array/mask                                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/mask.mcfunction#L1
    #declare function lib:array/mask_inverted                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/mask_inverted.mcfunction#L1
    #declare function lib:array/math/add                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/math/add.mcfunction#L1
    #declare function lib:array/math/scalar_multiply                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/math/scalar_multiply.mcfunction#L1
    #declare function lib:array/math/sqr                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/math/sqr.mcfunction#L1
    #declare function lib:array/math/sub                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/math/sub.mcfunction#L1
    #declare function lib:array/math/sum                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/math/sum.mcfunction#L1
    #declare function lib:array/merge                                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/merge.mcfunction#L1
    #declare function lib:array/move                                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/move.mcfunction#L1
    #declare function lib:array/packing_chest                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/packing_chest.mcfunction#L1
    #declare function lib:array/picks                                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/picks.mcfunction#L1
    #declare function lib:array/reverse                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/reverse.mcfunction#L1
    #declare function lib:array/revert                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/revert.mcfunction#L1
    #declare function lib:array/session/close                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/session/close.mcfunction#L1
    #declare function lib:array/session/open                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/session/open.mcfunction#L1
    #declare function lib:array/shuffle                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/shuffle.mcfunction#L1
    #declare function lib:array/sort_ascend                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/sort_ascend.mcfunction#L1
    #declare function lib:array/sort_descend                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/array/sort_descend.mcfunction#L1
    #declare function lib:bit_array_to_integer/                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/bit_array_to_integer/.mcfunction#L1
    #declare function lib:damage/                                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/damage/.mcfunction#L1
    #declare function lib:damage/modifier                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/damage/modifier.mcfunction#L1
    #declare function lib:damage/modifier_continuation                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/damage/modifier_continuation.mcfunction#L1
    #declare function lib:damage/reset                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/damage/reset.mcfunction#L1
    #declare function lib:dimension/get                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/dimension/get.mcfunction#L1
    #declare function lib:forward_spreader/circle                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/forward_spreader/circle.mcfunction#L1
    #declare function lib:forward_spreader/square                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/forward_spreader/square.mcfunction#L1
    #declare function lib:get_name/                                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/get_name/.mcfunction#L1
    #declare function lib:heal/                                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/heal/.mcfunction#L1
    #declare function lib:heal/modifier                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/heal/modifier.mcfunction#L1
    #declare function lib:heal/reset                                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/heal/reset.mcfunction#L1
    #declare function lib:integer_to_bit_array/                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/integer_to_bit_array/.mcfunction#L1
    #declare function lib:message/artifact/can_not_use_here                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/message/artifact/can_not_use_here.mcfunction#L1
    #declare function lib:message/artifact/dont_have_require_items                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/message/artifact/dont_have_require_items.mcfunction#L1
    #declare function lib:message/invalid_operation                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/message/invalid_operation.mcfunction#L1
    #declare function lib:motion/                                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/motion/.mcfunction#L1
    #declare function lib:mp/fluctuation                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/mp/fluctuation.mcfunction#L1
    #declare function lib:mp/get                                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/mp/get.mcfunction#L1
    #declare function lib:mp/get_max                                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/mp/get_max.mcfunction#L1
    #declare function lib:mp/set                                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/mp/set.mcfunction#L1
    #declare function lib:random/                                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/random/.mcfunction#L1
    #declare function lib:score_to_health_wrapper/set                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/score_to_health_wrapper/set.mcfunction#L1
    #declare function lib:score_to_move/                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/score_to_move/.mcfunction#L1
    #declare function lib:spread_entity/                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/spread_entity/.mcfunction#L1
    #declare function minecraft:test                                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/minecraft/functions/test.mcfunction#L1
    #declare function natural_merge_sort:ascend                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/ascend.mcfunction#L1
    #declare function natural_merge_sort:descend                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/descend.mcfunction#L1
    #declare function natural_merge_sort:sys/ascend                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/sys/ascend.mcfunction#L1
    #declare function natural_merge_sort:sys/ascend/loop                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/sys/ascend/loop.mcfunction#L1
    #declare function natural_merge_sort:sys/ascend/shift                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/sys/ascend/shift.mcfunction#L1
    #declare function natural_merge_sort:sys/ascend/take1                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/sys/ascend/take1.mcfunction#L1
    #declare function natural_merge_sort:sys/ascend/take2                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/sys/ascend/take2.mcfunction#L1
    #declare function natural_merge_sort:sys/descend                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/sys/descend.mcfunction#L1
    #declare function natural_merge_sort:sys/descend/loop                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/sys/descend/loop.mcfunction#L1
    #declare function natural_merge_sort:sys/descend/shift                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/sys/descend/shift.mcfunction#L1
    #declare function natural_merge_sort:sys/descend/take1                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/sys/descend/take1.mcfunction#L1
    #declare function natural_merge_sort:sys/descend/take2                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/sys/descend/take2.mcfunction#L1
    #declare function natural_merge_sort:sys/setup                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/sys/setup.mcfunction#L1
    #declare function natural_merge_sort:sys/sort                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/NaturalMergeSort/data/natural_merge_sort/functions/sys/sort.mcfunction#L1
    #declare function oh_its_dat:please                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/OhMyDat/data/oh_its_dat/functions/please.mcfunction#L1
    #declare function oh_my_dat:please                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/OhMyDat/data/oh_my_dat/functions/please.mcfunction#L1
    #declare function oh_my_dat:release                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/OhMyDat/data/oh_my_dat/functions/release.mcfunction#L1
    #declare function oh_my_dat:sys/allocate                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/OhMyDat/data/oh_my_dat/functions/sys/allocate.mcfunction#L1
    #declare function oh_my_dat:sys/gc                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/OhMyDat/data/oh_my_dat/functions/sys/gc.mcfunction#L1
    #declare function oh_my_dat:sys/gc_loop                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/OhMyDat/data/oh_my_dat/functions/sys/gc_loop.mcfunction#L1
    #declare function oh_my_dat:sys/init                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/OhMyDat/data/oh_my_dat/functions/sys/init.mcfunction#L1
    #declare function oh_my_dat:sys/load                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/OhMyDat/data/oh_my_dat/functions/sys/load.mcfunction#L1
    #declare function oh_my_dat:sys/provide                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/OhMyDat/data/oh_my_dat/functions/sys/provide.mcfunction#L1
    #declare function score_to_health:anti_glitch/modify                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/ScoreToHealth/data/score_to_health/functions/anti_glitch/modify.mcfunction#L1
    #declare function score_to_health:anti_glitch/protect                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/ScoreToHealth/data/score_to_health/functions/anti_glitch/protect.mcfunction#L1
    #declare function score_to_health:anti_glitch/restore                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/ScoreToHealth/data/score_to_health/functions/anti_glitch/restore.mcfunction#L1
    #declare function score_to_health:anti_glitch/unprotect                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/ScoreToHealth/data/score_to_health/functions/anti_glitch/unprotect.mcfunction#L1
    #declare function score_to_health:check                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/ScoreToHealth/data/score_to_health/functions/check.mcfunction#L1
    #declare function score_to_health:load                                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/ScoreToHealth/data/score_to_health/functions/load.mcfunction#L1
    #declare function score_to_health:modify                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/ScoreToHealth/data/score_to_health/functions/modify.mcfunction#L1
    #declare function score_to_health:modify_max_health                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/ScoreToHealth/data/score_to_health/functions/modify_max_health.mcfunction#L1
    #declare function score_to_health:player_tick                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/ScoreToHealth/data/score_to_health/functions/player_tick.mcfunction#L1
    #declare function score_to_health:restore                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/ScoreToHealth/data/score_to_health/functions/restore.mcfunction#L1
    #declare function world_manager:gimmick/ending_portal/open                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/functions/gimmick/ending_portal/open.mcfunction#L1
    #declare loot_table asset_manager:artifact/generate_lore/attack_info              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/attack_info.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/condition                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/condition.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/cooldown                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/cooldown.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/cost_item                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/cost_item.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/god                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/god.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/mp_cost                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/mp_cost.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/mp_require               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/mp_require.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/special_cooldown         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/special_cooldown.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/trigger                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/trigger.json#L1
    #declare loot_table asset_manager:artifact/get_lore                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/loot_tables/artifact/get_lore.json#L1
    #declare loot_table asset_manager:artifact/get_name/                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/loot_tables/artifact/get_name/.json#L1
    #declare loot_table asset_manager:artifact/get_name/has_remain                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/loot_tables/artifact/get_name/has_remain.json#L1
    #declare loot_table asset:mob/death/0046.clock_of_despair                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/loot_tables/mob/death/0046.clock_of_despair.json#L1
    #declare loot_table asset:mob/death/0055.hetukedah                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/loot_tables/mob/death/0055.hetukedah.json#L1
    #declare loot_table asset:mob/death/0060.self_destructor                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/loot_tables/mob/death/0060.self_destructor.json#L1
    #declare loot_table asset:mob/death/0078.messenger_of_thunder                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/loot_tables/mob/death/0078.messenger_of_thunder.json#L1
    #declare loot_table asset:mob/death/0083.thunder_trifler                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/loot_tables/mob/death/0083.thunder_trifler.json#L1
    #declare loot_table asset:mob/death/0237.lunatic_mage                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/loot_tables/mob/death/0237.lunatic_mage.json#L1
    #declare loot_table asset:mob/death/abstract_detect_item                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/loot_tables/mob/death/abstract_detect_item.json#L1
    #declare loot_table asset:mob/death/ex.1                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/loot_tables/mob/death/ex.1.json#L1
    #declare loot_table asset:mob/death/ex.2                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/loot_tables/mob/death/ex.2.json#L1
    #declare loot_table asset:mob/death/ex.3                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/loot_tables/mob/death/ex.3.json#L1
    #declare loot_table asset:mob/death/example                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/loot_tables/mob/death/example.json#L1
    #declare loot_table common:currency/                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/common/loot_tables/currency/.json#L1
    #declare loot_table common:currency/high                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/common/loot_tables/currency/high.json#L1
    #declare loot_table common:island_rewards/lv-1                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/common/loot_tables/island_rewards/lv-1.json#L1
    #declare loot_table common:island_rewards/lv-2                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/common/loot_tables/island_rewards/lv-2.json#L1
    #declare loot_table common:island_rewards/lv-3                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/common/loot_tables/island_rewards/lv-3.json#L1
    #declare loot_table common:island_rewards/lv-4                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/common/loot_tables/island_rewards/lv-4.json#L1
    #declare loot_table common:sacred_shard/lv-1                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/common/loot_tables/sacred_shard/lv-1.json#L1
    #declare loot_table common:sacred_shard/lv-2                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/common/loot_tables/sacred_shard/lv-2.json#L1
    #declare loot_table common:sacred_shard/lv-3                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/common/loot_tables/sacred_shard/lv-3.json#L1
    #declare loot_table common:sacred_shard/lv-4                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/common/loot_tables/sacred_shard/lv-4.json#L1
    #declare loot_table lib:get_name                                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/loot_tables/get_name.json#L1
    #declare loot_table lib:status_log/damage                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/loot_tables/status_log/damage.json#L1
    #declare loot_table lib:status_log/heal                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/loot_tables/status_log/heal.json#L1
    #declare loot_table lib:status_log/mp                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/loot_tables/status_log/mp.json#L1
    #declare loot_table minecraft:blocks/cobblestone                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/minecraft/loot_tables/blocks/cobblestone.json#L1
    #declare loot_table minecraft:blocks/lime_shulker_box                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/minecraft/loot_tables/blocks/lime_shulker_box.json#L1
    #declare loot_table minecraft:blocks/stone                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/minecraft/loot_tables/blocks/stone.json#L1
    #declare loot_table minecraft:empty                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/minecraft/loot_tables/empty.json#L1
    #declare loot_table player_manager:lost_item/give_all/name_to_textcomponent       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/player_manager/loot_tables/lost_item/give_all/name_to_textcomponent.json#L1
    #declare objective Const                                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/load_once.mcfunction#L118
    #declare objective Global                                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/load_once.mcfunction#L105
    #declare objective Lib                                                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/load_once.mcfunction#L207
    #declare objective MobID                                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/load_once.mcfunction#L159
    #declare objective MobUUID                                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/load_once.mcfunction#L124
    #declare objective Temporary                                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/load_once.mcfunction#L101
    #declare objective UserID                                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/load_once.mcfunction#L123
    #declare predicate api:global_vars/difficulty/easy                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/predicates/global_vars/difficulty/easy.json#L1
    #declare predicate api:global_vars/difficulty/hard                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/predicates/global_vars/difficulty/hard.json#L1
    #declare predicate api:global_vars/difficulty/max/hard                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/predicates/global_vars/difficulty/max/hard.json#L1
    #declare predicate api:global_vars/difficulty/max/normal                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/predicates/global_vars/difficulty/max/normal.json#L1
    #declare predicate api:global_vars/difficulty/min/hard                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/predicates/global_vars/difficulty/min/hard.json#L1
    #declare predicate api:global_vars/difficulty/min/normal                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/predicates/global_vars/difficulty/min/normal.json#L1
    #declare predicate api:global_vars/difficulty/min/over_difficulty                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/predicates/global_vars/difficulty/min/over_difficulty.json#L1
    #declare predicate api:global_vars/difficulty/normal                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/predicates/global_vars/difficulty/normal.json#L1
    #declare predicate api:is_completed_player_chunk_load_waiting_time                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/predicates/is_completed_player_chunk_load_waiting_time.json#L1
    #declare predicate asset_manager:has_consumable_item/mainhand                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/predicates/has_consumable_item/mainhand.json#L1
    #declare predicate asset_manager:has_consumable_item/offhand                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/predicates/has_consumable_item/offhand.json#L1
    #declare predicate asset_manager:is_use_mainhand/carrot_on_a_stick                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/predicates/is_use_mainhand/carrot_on_a_stick.json#L1
    #declare predicate lib:dimension/is_end                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/dimension/is_end.json#L1
    #declare predicate lib:dimension/is_nether                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/dimension/is_nether.json#L1
    #declare predicate lib:dimension/is_overworld                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/dimension/is_overworld.json#L1
    #declare predicate lib:has_health_modify_score                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/has_health_modify_score.json#L1
    #declare predicate lib:is_baby                                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_baby.json#L1
    #declare predicate lib:is_ban_tp_area                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_ban_tp_area.json#L1
    #declare predicate lib:is_burning                                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_burning.json#L1
    #declare predicate lib:is_day                                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_day.json#L1
    #declare predicate lib:is_deep_void                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_deep_void.json#L1
    #declare predicate lib:is_in_lava/                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_in_lava/.json#L1
    #declare predicate lib:is_in_lava/include_flowing                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_in_lava/include_flowing.json#L1
    #declare predicate lib:is_in_water/                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_in_water/.json#L1
    #declare predicate lib:is_in_water/include_flowing                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_in_water/include_flowing.json#L1
    #declare predicate lib:is_passenger                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_passenger.json#L1
    #declare predicate lib:is_placeable_vehicle                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_placeable_vehicle.json#L1
    #declare predicate lib:is_player_moving                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_player_moving.json#L1
    #declare predicate lib:is_sneaking                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_sneaking.json#L1
    #declare predicate lib:is_sprinting                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_sprinting.json#L1
    #declare predicate lib:is_swimming                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_swimming.json#L1
    #declare predicate lib:is_vehicle                                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_vehicle.json#L1
    #declare predicate lib:is_void                                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/is_void.json#L1
    #declare predicate lib:light_level/0                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/0.json#L1
    #declare predicate lib:light_level/1                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/1.json#L1
    #declare predicate lib:light_level/10                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/10.json#L1
    #declare predicate lib:light_level/11                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/11.json#L1
    #declare predicate lib:light_level/12                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/12.json#L1
    #declare predicate lib:light_level/13                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/13.json#L1
    #declare predicate lib:light_level/14                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/14.json#L1
    #declare predicate lib:light_level/15                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/15.json#L1
    #declare predicate lib:light_level/2                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/2.json#L1
    #declare predicate lib:light_level/3                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/3.json#L1
    #declare predicate lib:light_level/4                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/4.json#L1
    #declare predicate lib:light_level/5                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/5.json#L1
    #declare predicate lib:light_level/6                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/6.json#L1
    #declare predicate lib:light_level/7                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/7.json#L1
    #declare predicate lib:light_level/8                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/8.json#L1
    #declare predicate lib:light_level/9                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/9.json#L1
    #declare predicate lib:light_level/max/0                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/0.json#L1
    #declare predicate lib:light_level/max/1                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/1.json#L1
    #declare predicate lib:light_level/max/10                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/10.json#L1
    #declare predicate lib:light_level/max/11                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/11.json#L1
    #declare predicate lib:light_level/max/12                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/12.json#L1
    #declare predicate lib:light_level/max/13                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/13.json#L1
    #declare predicate lib:light_level/max/14                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/14.json#L1
    #declare predicate lib:light_level/max/15                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/15.json#L1
    #declare predicate lib:light_level/max/2                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/2.json#L1
    #declare predicate lib:light_level/max/3                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/3.json#L1
    #declare predicate lib:light_level/max/4                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/4.json#L1
    #declare predicate lib:light_level/max/5                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/5.json#L1
    #declare predicate lib:light_level/max/6                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/6.json#L1
    #declare predicate lib:light_level/max/7                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/7.json#L1
    #declare predicate lib:light_level/max/8                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/8.json#L1
    #declare predicate lib:light_level/max/9                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/max/9.json#L1
    #declare predicate lib:light_level/min/0                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/0.json#L1
    #declare predicate lib:light_level/min/1                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/1.json#L1
    #declare predicate lib:light_level/min/10                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/10.json#L1
    #declare predicate lib:light_level/min/11                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/11.json#L1
    #declare predicate lib:light_level/min/12                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/12.json#L1
    #declare predicate lib:light_level/min/13                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/13.json#L1
    #declare predicate lib:light_level/min/14                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/14.json#L1
    #declare predicate lib:light_level/min/15                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/15.json#L1
    #declare predicate lib:light_level/min/2                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/2.json#L1
    #declare predicate lib:light_level/min/3                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/3.json#L1
    #declare predicate lib:light_level/min/4                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/4.json#L1
    #declare predicate lib:light_level/min/5                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/5.json#L1
    #declare predicate lib:light_level/min/6                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/6.json#L1
    #declare predicate lib:light_level/min/7                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/7.json#L1
    #declare predicate lib:light_level/min/8                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/8.json#L1
    #declare predicate lib:light_level/min/9                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/light_level/min/9.json#L1
    #declare predicate lib:random_pass_per/1                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/1.json#L1
    #declare predicate lib:random_pass_per/10                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/10.json#L1
    #declare predicate lib:random_pass_per/11                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/11.json#L1
    #declare predicate lib:random_pass_per/12                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/12.json#L1
    #declare predicate lib:random_pass_per/13                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/13.json#L1
    #declare predicate lib:random_pass_per/14                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/14.json#L1
    #declare predicate lib:random_pass_per/15                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/15.json#L1
    #declare predicate lib:random_pass_per/16                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/16.json#L1
    #declare predicate lib:random_pass_per/17                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/17.json#L1
    #declare predicate lib:random_pass_per/18                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/18.json#L1
    #declare predicate lib:random_pass_per/19                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/19.json#L1
    #declare predicate lib:random_pass_per/2                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/2.json#L1
    #declare predicate lib:random_pass_per/20                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/20.json#L1
    #declare predicate lib:random_pass_per/21                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/21.json#L1
    #declare predicate lib:random_pass_per/22                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/22.json#L1
    #declare predicate lib:random_pass_per/23                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/23.json#L1
    #declare predicate lib:random_pass_per/24                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/24.json#L1
    #declare predicate lib:random_pass_per/25                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/25.json#L1
    #declare predicate lib:random_pass_per/26                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/26.json#L1
    #declare predicate lib:random_pass_per/27                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/27.json#L1
    #declare predicate lib:random_pass_per/28                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/28.json#L1
    #declare predicate lib:random_pass_per/29                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/29.json#L1
    #declare predicate lib:random_pass_per/3                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/3.json#L1
    #declare predicate lib:random_pass_per/30                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/30.json#L1
    #declare predicate lib:random_pass_per/31                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/31.json#L1
    #declare predicate lib:random_pass_per/32                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/32.json#L1
    #declare predicate lib:random_pass_per/33                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/33.json#L1
    #declare predicate lib:random_pass_per/34                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/34.json#L1
    #declare predicate lib:random_pass_per/35                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/35.json#L1
    #declare predicate lib:random_pass_per/36                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/36.json#L1
    #declare predicate lib:random_pass_per/37                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/37.json#L1
    #declare predicate lib:random_pass_per/38                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/38.json#L1
    #declare predicate lib:random_pass_per/39                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/39.json#L1
    #declare predicate lib:random_pass_per/4                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/4.json#L1
    #declare predicate lib:random_pass_per/40                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/40.json#L1
    #declare predicate lib:random_pass_per/41                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/41.json#L1
    #declare predicate lib:random_pass_per/42                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/42.json#L1
    #declare predicate lib:random_pass_per/43                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/43.json#L1
    #declare predicate lib:random_pass_per/44                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/44.json#L1
    #declare predicate lib:random_pass_per/45                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/45.json#L1
    #declare predicate lib:random_pass_per/46                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/46.json#L1
    #declare predicate lib:random_pass_per/47                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/47.json#L1
    #declare predicate lib:random_pass_per/48                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/48.json#L1
    #declare predicate lib:random_pass_per/49                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/49.json#L1
    #declare predicate lib:random_pass_per/5                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/5.json#L1
    #declare predicate lib:random_pass_per/50                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/50.json#L1
    #declare predicate lib:random_pass_per/51                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/51.json#L1
    #declare predicate lib:random_pass_per/52                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/52.json#L1
    #declare predicate lib:random_pass_per/53                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/53.json#L1
    #declare predicate lib:random_pass_per/54                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/54.json#L1
    #declare predicate lib:random_pass_per/55                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/55.json#L1
    #declare predicate lib:random_pass_per/56                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/56.json#L1
    #declare predicate lib:random_pass_per/57                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/57.json#L1
    #declare predicate lib:random_pass_per/58                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/58.json#L1
    #declare predicate lib:random_pass_per/59                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/59.json#L1
    #declare predicate lib:random_pass_per/6                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/6.json#L1
    #declare predicate lib:random_pass_per/60                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/60.json#L1
    #declare predicate lib:random_pass_per/61                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/61.json#L1
    #declare predicate lib:random_pass_per/62                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/62.json#L1
    #declare predicate lib:random_pass_per/63                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/63.json#L1
    #declare predicate lib:random_pass_per/64                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/64.json#L1
    #declare predicate lib:random_pass_per/65                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/65.json#L1
    #declare predicate lib:random_pass_per/66                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/66.json#L1
    #declare predicate lib:random_pass_per/67                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/67.json#L1
    #declare predicate lib:random_pass_per/68                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/68.json#L1
    #declare predicate lib:random_pass_per/69                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/69.json#L1
    #declare predicate lib:random_pass_per/7                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/7.json#L1
    #declare predicate lib:random_pass_per/70                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/70.json#L1
    #declare predicate lib:random_pass_per/71                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/71.json#L1
    #declare predicate lib:random_pass_per/72                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/72.json#L1
    #declare predicate lib:random_pass_per/73                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/73.json#L1
    #declare predicate lib:random_pass_per/74                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/74.json#L1
    #declare predicate lib:random_pass_per/75                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/75.json#L1
    #declare predicate lib:random_pass_per/76                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/76.json#L1
    #declare predicate lib:random_pass_per/77                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/77.json#L1
    #declare predicate lib:random_pass_per/78                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/78.json#L1
    #declare predicate lib:random_pass_per/79                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/79.json#L1
    #declare predicate lib:random_pass_per/8                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/8.json#L1
    #declare predicate lib:random_pass_per/80                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/80.json#L1
    #declare predicate lib:random_pass_per/81                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/81.json#L1
    #declare predicate lib:random_pass_per/82                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/82.json#L1
    #declare predicate lib:random_pass_per/83                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/83.json#L1
    #declare predicate lib:random_pass_per/84                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/84.json#L1
    #declare predicate lib:random_pass_per/85                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/85.json#L1
    #declare predicate lib:random_pass_per/86                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/86.json#L1
    #declare predicate lib:random_pass_per/87                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/87.json#L1
    #declare predicate lib:random_pass_per/88                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/88.json#L1
    #declare predicate lib:random_pass_per/89                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/89.json#L1
    #declare predicate lib:random_pass_per/9                                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/9.json#L1
    #declare predicate lib:random_pass_per/90                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/90.json#L1
    #declare predicate lib:random_pass_per/91                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/91.json#L1
    #declare predicate lib:random_pass_per/92                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/92.json#L1
    #declare predicate lib:random_pass_per/93                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/93.json#L1
    #declare predicate lib:random_pass_per/94                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/94.json#L1
    #declare predicate lib:random_pass_per/95                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/95.json#L1
    #declare predicate lib:random_pass_per/96                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/96.json#L1
    #declare predicate lib:random_pass_per/97                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/97.json#L1
    #declare predicate lib:random_pass_per/98                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/98.json#L1
    #declare predicate lib:random_pass_per/99                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/random_pass_per/99.json#L1
    #declare predicate lib:weather/is_raining                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/weather/is_raining.json#L1
    #declare predicate lib:weather/is_sunny                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/weather/is_sunny.json#L1
    #declare predicate lib:weather/is_thundering                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/predicates/weather/is_thundering.json#L1
    #declare predicate player_manager:god/flora/has_high_lvl_regeneration             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/player_manager/predicates/god/flora/has_high_lvl_regeneration.json#L1
    #declare predicate player_manager:god/nyaptov/has_high_lvl_slow_falling           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/player_manager/predicates/god/nyaptov/has_high_lvl_slow_falling.json#L1
    #declare predicate player_manager:is_believe/flora                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/player_manager/predicates/is_believe/flora.json#L1
    #declare predicate player_manager:is_believe/null                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/player_manager/predicates/is_believe/null.json#L1
    #declare predicate player_manager:is_believe/nyaptov                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/player_manager/predicates/is_believe/nyaptov.json#L1
    #declare predicate player_manager:is_believe/rumor                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/player_manager/predicates/is_believe/rumor.json#L1
    #declare predicate player_manager:is_believe/urban                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/player_manager/predicates/is_believe/urban.json#L1
    #declare predicate player_manager:is_believe/wi-ki                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/player_manager/predicates/is_believe/wi-ki.json#L1
    #declare predicate world_manager:area/01-01.tutorial-goal                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-01.tutorial-goal.json#L1
    #declare predicate world_manager:area/01-02.tutorial-island                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-02.tutorial-island.json#L1
    #declare predicate world_manager:area/01-03.tutorial-artifact                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-03.tutorial-artifact.json#L1
    #declare predicate world_manager:area/01-04.tutorial-religion                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-04.tutorial-religion.json#L1
    #declare predicate world_manager:area/01-05.tutorial-spawner                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-05.tutorial-spawner.json#L1
    #declare predicate world_manager:area/01-06.tutorial-lost_items                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-06.tutorial-lost_items.json#L1
    #declare predicate world_manager:area/01-07.tutorial-recommend                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-07.tutorial-recommend.json#L1
    #declare predicate world_manager:area/01-08.tutorial-tp_point                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-08.tutorial-tp_point.json#L1
    #declare predicate world_manager:area/01-10.flora_temple                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-10.flora_temple.json#L1
    #declare predicate world_manager:area/01-11.nyaptov_temple                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-11.nyaptov_temple.json#L1
    #declare predicate world_manager:area/01-12.rumor_temple                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-12.rumor_temple.json#L1
    #declare predicate world_manager:area/01-13.urban_temple                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-13.urban_temple.json#L1
    #declare predicate world_manager:area/01-14.wi-ki_temple                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-14.wi-ki_temple.json#L1
    #declare predicate world_manager:area/01-30.gate_island-lower                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-30.gate_island-lower.json#L1
    #declare predicate world_manager:area/01-98.world-spawn-higher                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-98.world-spawn-higher.json#L1
    #declare predicate world_manager:area/01-99.world-spawn                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01-99.world-spawn.json#L1
    #declare predicate world_manager:area/01.god_boundaries                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/01.god_boundaries.json#L1
    #declare predicate world_manager:area/02-01.shard_processor                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/02-01.shard_processor.json#L1
    #declare predicate world_manager:area/02.islands                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/02.islands.json#L1
    #declare predicate world_manager:area/03.nether                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/03.nether.json#L1
    #declare predicate world_manager:area/04-01.end_mansion_void                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/04-01.end_mansion_void.json#L1
    #declare predicate world_manager:area/04-02.end_forgotten_star_lower              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/04-02.end_forgotten_star_lower.json#L1
    #declare predicate world_manager:area/04-03.end_forgotten_star_higher             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/04-03.end_forgotten_star_higher.json#L1
    #declare predicate world_manager:area/04.end                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/predicates/area/04.end.json#L1
    #declare recipe minecraft:enchanting_table                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/minecraft/recipes/enchanting_table.json#L1
    #declare score_holder $LoadTime                                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/_index.d.mcfunction#L7
    #declare score_holder $PlayerCount                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/_index.d.mcfunction#L6
    #declare storage api:                                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/_index.d.mcfunction#L6
    #declare storage lib:                                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/functions/_index.d.mcfunction#L6
    #declare storage minecraft:global                                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/load_once.mcfunction#L57
    #declare tag AttackedEntity                                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/mob_manager/functions/entity_finder/attacked_entity/_index.d.mcfunction#L10
    #declare tag AttackingEntity                                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/mob_manager/functions/entity_finder/attacking_entity/_index.d.mcfunction#L10
    #declare tag BetaEndingPortal                                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/world_manager/functions/gimmick/ending_portal/_index.d.mcfunction#L7
    #declare tag Death                                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/_index.d.mcfunction#L18
    #declare tag DevPrivilege                                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/load_once.mcfunction#L56
    #declare tag Enemy                                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L7
    #declare tag Enemy.Boss                                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L8
    #declare tag Friend                                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L6
    #declare tag Npc                                                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L10
    #declare tag Object                                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L11
    #declare tag PlayerShouldInvulnerable                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/player_manager/functions/manage_tag/_index.d.mcfunction#L6
    #declare tag Projectile                                                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L9
    #declare tag Uninterferable                                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L12
    #declare tag UUIDAttacker                                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/damage/core/health_subtract/non-player.mcfunction#L10
    #declare tag/block lib:air                                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/blocks/air.json#L1
    #declare tag/block lib:chests                                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/blocks/chests.json#L1
    #declare tag/block lib:command_blocks                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/blocks/command_blocks.json#L1
    #declare tag/block lib:containers                                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/blocks/containers.json#L1
    #declare tag/block lib:dirts                                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/blocks/dirts.json#L1
    #declare tag/block lib:glass_panes                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/blocks/glass_panes.json#L1
    #declare tag/block lib:glasses                                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/blocks/glasses.json#L1
    #declare tag/block lib:has_inventory                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/blocks/has_inventory.json#L1
    #declare tag/block lib:no_collision                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/blocks/no_collision.json#L1
    #declare tag/block lib:no_collision_without_fluid                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/blocks/no_collision_without_fluid.json#L1
    #declare tag/block lib:ores                                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/blocks/ores.json#L1
    #declare tag/block lib:torches                                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/blocks/torches.json#L1
    #declare tag/block lib:unbreakable                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/blocks/unbreakable.json#L1
    #declare tag/block minecraft:enderman_holdable                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/minecraft/tags/blocks/enderman_holdable.json#L1
    #declare tag/entity_type lib:drownable                                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/entity_types/drownable.json#L1
    #declare tag/entity_type lib:hostile                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/entity_types/hostile.json#L1
    #declare tag/entity_type lib:living                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/entity_types/living.json#L1
    #declare tag/entity_type lib:neutral                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/entity_types/neutral.json#L1
    #declare tag/entity_type lib:neutral_enemy                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/entity_types/neutral_enemy.json#L1
    #declare tag/entity_type lib:neutral_friend                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/entity_types/neutral_friend.json#L1
    #declare tag/entity_type lib:passive                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/entity_types/passive.json#L1
    #declare tag/entity_type lib:placeable_vehicles                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/entity_types/placeable_vehicles.json#L1
    #declare tag/entity_type lib:undead                                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/entity_types/undead.json#L1
    #declare tag/function asset:artifact/attack                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/attack.json#L1
    #declare tag/function asset:artifact/attack/melee                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/attack/melee.json#L1
    #declare tag/function asset:artifact/attack/projectile                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/attack/projectile.json#L1
    #declare tag/function asset:artifact/click.carrot_on_a_stick                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/click.carrot_on_a_stick.json#L1
    #declare tag/function asset:artifact/damage                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/damage.json#L1
    #declare tag/function asset:artifact/damage/explode                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/damage/explode.json#L1
    #declare tag/function asset:artifact/damage/fire                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/damage/fire.json#L1
    #declare tag/function asset:artifact/damage/from_entity/                          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/damage/from_entity/.json#L1
    #declare tag/function asset:artifact/damage/from_entity/blocked                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/damage/from_entity/blocked.json#L1
    #declare tag/function asset:artifact/damage/from_entity/melee                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/damage/from_entity/melee.json#L1
    #declare tag/function asset:artifact/damage/from_entity/projectile                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/damage/from_entity/projectile.json#L1
    #declare tag/function asset:artifact/dis_equip                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/dis_equip.json#L1
    #declare tag/function asset:artifact/equip                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/equip.json#L1
    #declare tag/function asset:artifact/give                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/give.json#L1
    #declare tag/function asset:artifact/killed                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/killed.json#L1
    #declare tag/function asset:artifact/killed/melee                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/killed/melee.json#L1
    #declare tag/function asset:artifact/killed/projectile                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/killed/projectile.json#L1
    #declare tag/function asset:artifact/load                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/load.json#L1
    #declare tag/function asset:artifact/register                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/register.json#L1
    #declare tag/function asset:artifact/sneak/                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/.json#L1
    #declare tag/function asset:artifact/sneak/10s                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/10s.json#L1
    #declare tag/function asset:artifact/sneak/1s                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/1s.json#L1
    #declare tag/function asset:artifact/sneak/2s                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/2s.json#L1
    #declare tag/function asset:artifact/sneak/3s                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/3s.json#L1
    #declare tag/function asset:artifact/sneak/4s                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/4s.json#L1
    #declare tag/function asset:artifact/sneak/5s                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/5s.json#L1
    #declare tag/function asset:artifact/sneak/keep/                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/keep/.json#L1
    #declare tag/function asset:artifact/sneak/keep/10s                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/keep/10s.json#L1
    #declare tag/function asset:artifact/sneak/keep/1s                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/keep/1s.json#L1
    #declare tag/function asset:artifact/sneak/keep/2s                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/keep/2s.json#L1
    #declare tag/function asset:artifact/sneak/keep/3s                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/keep/3s.json#L1
    #declare tag/function asset:artifact/sneak/keep/4s                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/keep/4s.json#L1
    #declare tag/function asset:artifact/sneak/keep/5s                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/sneak/keep/5s.json#L1
    #declare tag/function asset:artifact/tick                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/tick.json#L1
    #declare tag/function asset:artifact/use_item                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/use_item.json#L1
    #declare tag/function asset:artifact/using_item                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/artifact/using_item.json#L1
    #declare tag/function asset:island/dispelled                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/island/dispelled.json#L1
    #declare tag/function asset:island/register                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/island/register.json#L1
    #declare tag/function asset:mob/attack                                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/mob/attack.json#L1
    #declare tag/function asset:mob/death                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/mob/death.json#L1
    # from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/mob/hurt.json#L1
    # from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/tags/functions/mob/hurt.json#L1
    #declare tag/function asset:mob/hurt
    #declare tag/function asset:mob/initialize                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/mob/initialize.json#L1
    #declare tag/function asset:mob/load                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/mob/load.json#L1
    # from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/tags/functions/mob/register.json#L1
    # from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/mob/register.json#L1
    #declare tag/function asset:mob/register
    #declare tag/function asset:mob/remove                                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/mob/remove.json#L1
    # from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/tags/functions/mob/summon.json#L1
    # from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/mob/summon.json#L1
    #declare tag/function asset:mob/summon
    # from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/mob/tick.json#L1
    # from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/tags/functions/mob/tick.json#L1
    #declare tag/function asset:mob/tick
    #declare tag/function asset:rejoin                                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/rejoin.json#L1
    #declare tag/function asset:spawner/register/a                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/spawner/register/a.json#L1
    #declare tag/function asset:spawner/register/b                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/spawner/register/b.json#L1
    #declare tag/function asset:spawner/register/c                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/spawner/register/c.json#L1
    #declare tag/function asset:spawner/register/d                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/spawner/register/d.json#L1
    #declare tag/function asset:spawner/register/e                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/spawner/register/e.json#L1
    #declare tag/function asset:spawner/register/f                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/spawner/register/f.json#L1
    #declare tag/function asset:teleporter/register                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/teleporter/register.json#L1
    #declare tag/function asset:trader/register                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/asset/tags/functions/trader/register.json#L1
    # from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/ScoreToHealth/data/minecraft/tags/functions/load.json#L1
    # from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/minecraft/tags/functions/load.json#L1
    # from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/OhMyDat/data/minecraft/tags/functions/load.json#L1
    #declare tag/function minecraft:load
    #declare tag/function minecraft:tick                                              from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/minecraft/tags/functions/tick.json#L1
    #declare tag/item lib:all                                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/all.json#L1
    #declare tag/item lib:consumable                                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/consumable.json#L1
    #declare tag/item lib:edible                                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/edible.json#L1
    #declare tag/item lib:has_bypass_fullstomach_consumable                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_bypass_fullstomach_consumable.json#L1
    #declare tag/item lib:has_durability/                                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/.json#L1
    #declare tag/item lib:has_durability/armor/                                       from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/armor/.json#L1
    #declare tag/item lib:has_durability/armor/boots                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/armor/boots.json#L1
    #declare tag/item lib:has_durability/armor/chestplates                            from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/armor/chestplates.json#L1
    #declare tag/item lib:has_durability/armor/helmets                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/armor/helmets.json#L1
    #declare tag/item lib:has_durability/armor/leggings                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/armor/leggings.json#L1
    #declare tag/item lib:has_durability/material/chainmail                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/material/chainmail.json#L1
    #declare tag/item lib:has_durability/material/diamond                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/material/diamond.json#L1
    #declare tag/item lib:has_durability/material/gold                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/material/gold.json#L1
    #declare tag/item lib:has_durability/material/iron                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/material/iron.json#L1
    #declare tag/item lib:has_durability/material/leather                             from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/material/leather.json#L1
    #declare tag/item lib:has_durability/material/netherite                           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/material/netherite.json#L1
    #declare tag/item lib:has_durability/material/stone                               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/material/stone.json#L1
    #declare tag/item lib:has_durability/material/wood                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/material/wood.json#L1
    #declare tag/item lib:has_durability/tool/                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/tool/.json#L1
    #declare tag/item lib:has_durability/tool/axes                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/tool/axes.json#L1
    #declare tag/item lib:has_durability/tool/hoes                                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/tool/hoes.json#L1
    #declare tag/item lib:has_durability/tool/pickaxes                                from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/tool/pickaxes.json#L1
    #declare tag/item lib:has_durability/tool/shovels                                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/tool/shovels.json#L1
    #declare tag/item lib:has_durability/tool/swords                                  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/has_durability/tool/swords.json#L1
    #declare tag/item lib:pickaxes/level-1-mineable                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/pickaxes/level-1-mineable.json#L1
    #declare tag/item lib:pickaxes/level-2-mineable                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/pickaxes/level-2-mineable.json#L1
    #declare tag/item lib:pickaxes/level-3-mineable                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/pickaxes/level-3-mineable.json#L1
    #declare tag/item lib:pickaxes/level-4-mineable                                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/pickaxes/level-4-mineable.json#L1
    #declare tag/item lib:potions                                                     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/potions.json#L1
    #declare tag/item lib:usable                                                      from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/lib/tags/items/usable.json#L1
    #declare tag/item minecraft:trim_templates                                        from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/Asset/data/minecraft/tags/items/trim_templates.json#L1
    #declare team NoCollision                                                         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/load_once.mcfunction#L93

#> declare
# @within function asset:artifact/*/*/2.check_condition
    #declare function asset:artifact/common/check_condition/auto     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/auto.mcfunction#L1
    #declare function asset:artifact/common/check_condition/chest    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/chest.mcfunction#L1
    #declare function asset:artifact/common/check_condition/feet     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/feet.mcfunction#L1
    #declare function asset:artifact/common/check_condition/head     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/head.mcfunction#L1
    #declare function asset:artifact/common/check_condition/hotbar   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/hotbar.mcfunction#L1
    #declare function asset:artifact/common/check_condition/legs     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/legs.mcfunction#L1
    #declare function asset:artifact/common/check_condition/mainhand from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/mainhand.mcfunction#L1
    #declare function asset:artifact/common/check_condition/offhand  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/offhand.mcfunction#L1

#> declare
# @within function asset:teleporter/*/register
#declare function asset:teleporter/common/register from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/teleporter/common/register.mcfunction#L1

#> declare
# @within function asset:mob/*/register
#declare function asset:mob/extends from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/mob/extends.mcfunction#L1

#> declare
# @within function asset:artifact/*/give/2.give
#declare function asset:artifact/common/give from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/give.mcfunction#L1

#> declare
# @within function asset:artifact/*/*/3.main
    #declare function asset:artifact/common/use/auto     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/use/auto.mcfunction#L1
    #declare function asset:artifact/common/use/chest    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/use/chest.mcfunction#L1
    #declare function asset:artifact/common/use/feet     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/use/feet.mcfunction#L1
    #declare function asset:artifact/common/use/head     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/use/head.mcfunction#L1
    #declare function asset:artifact/common/use/hotbar   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/use/hotbar.mcfunction#L1
    #declare function asset:artifact/common/use/legs     from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/use/legs.mcfunction#L1
    #declare function asset:artifact/common/use/mainhand from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/use/mainhand.mcfunction#L1
    #declare function asset:artifact/common/use/offhand  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/use/offhand.mcfunction#L1

#> declare
# @within function asset:spawner/*/register
#declare function asset:spawner/common/register from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/spawner/common/register.mcfunction#L1

#> declare
# @within function asset:island/*/register/register
#declare function asset:island/common/register from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/island/common/register.mcfunction#L1

#> declare
# @within
#   function api:mob/core/summon
#   function asset:mob/*/summon/2.summon
#declare function asset:mob/common/summon from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/mob/common/summon.mcfunction#L1

#> declare
# @within function asset:mob/*/tick/
#declare function asset:mob/super.tick from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/mob/super.tick.mcfunction#L1

#> declare
# @within function asset:mob/*/death/
#declare function asset:mob/super.death from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/mob/super.death.mcfunction#L1

#> declare
# @within function asset:mob/*/attack/
#declare function asset:mob/super.attack from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/mob/super.attack.mcfunction#L1

#> declare
# @within function asset:mob/*/hurt/
#declare function asset:mob/super.hurt from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/mob/super.hurt.mcfunction#L1

#> declare
# @within function asset:trader/*/register/register
#declare function asset:trader/common/register from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/trader/common/register.mcfunction#L1

#> declare
# @within
#   function asset_manager:**
#   function asset:*/*/**
#   function asset:*/extends
#   function asset:*/super.*
#   function api:**
#declare storage asset:context from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/_index.d.mcfunction#L11

#> declare
# @within
#   asset_manager:artifact/**
#   asset:artifact/*/register
#   asset:artifact/*/give/2.give
#   asset:artifact/*/trigger/2.check_condition
#   asset:artifact/*/trigger/3.main
#   asset:artifact/common/**
#declare storage asset:artifact from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L12

#> declare
# @within
#   function oh_*:**
#   function lib:**
#   function api:**
#   function debug:**
#   function core:**
#   function asset:**
#   function asset_manager:**
#   function player_manager:**
#   function world_manager:**
    #declare objective OhMyDatID from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/OhMyDat/data/oh_my_dat/functions/sys/init.mcfunction#L30
    #declare storage oh_my_dat:  from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/OhMyDat/data/oh_my_dat/functions/sys/init.mcfunction#L29

#> declare
# @within
#   function core:migration/v0.1.4/
#   asset:teleporter/*/*
#   asset:teleporter/common/register
#   asset_manager:teleporter/**
# from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/migration/v0.1.4/.mcfunction#L12
# from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/teleporter/_index.d.mcfunction#L9
#declare storage asset:teleporter

#> declare
# @within
#   api:mob/core/**
#   asset:mob/*/register
#   asset:mob/*/*/
#   asset:mob/extends
#   asset:mob/super.*
#   asset_manager:mob/**
#   asset:mob/*/summon/2.summon
#   asset:mob/common/**
#declare storage asset:mob from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L14

#> declare
# @within
#   asset:spawner/*/*
#   asset_manager:spawner/**
#declare storage asset:spawner from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/spawner/_index.d.mcfunction#L8

#> declare
# @within
#   asset:island/*/register/*
#   asset:island/common/register
#   asset_manager:island/**
#declare storage asset:island from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/island/_index.d.mcfunction#L9

#> declare
# @within
#   asset_manager:trader/**
#   asset:trader/*/register/*
#   asset:trader/common/register
#declare storage asset:trader from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/trader/_index.d.mcfunction#L19

#> declare
# @within asset:**
#declare storage asset:temp from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/_index.d.mcfunction#L14

#> declare
# @within
#   core:tick/player/
#   player_manager:vanilla_attack/show_log
#   asset_manager:artifact/triggers/**
#   asset:artifact/**
#   asset_manager:teleporter/tick/**
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/death/
#   asset:mob/**
#   function asset_manager:mob/common_tag/anti_void_action/**
#   function asset_manager:island/dispel/boss/*
#   asset_manager:spawner/tick/*
# from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/core/functions/tick/player/.mcfunction#L14
# from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L43
# from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L86
# from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/island/dispel/boss/_index.d.mcfunction#L6
# from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/spawner/_index.d.mcfunction#L33
#declare tag this

#> declare
# @within
#   function asset:artifact/*/*/2.check_condition
#   function asset:artifact/*/*/2.check_condition/**
#   function asset_manager:artifact/check/
#   function asset:artifact/common/use/*
#declare tag CanUsed from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset/functions/artifact/common/_index.d.mcfunction#L10

#> declare
# @within
#   function api:mob/core/summon
#   function asset:mob/*/summon/
#   function asset:mob/*/summon/2.summon
#   function asset:mob/common/summon
#declare tag MobInit from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L22

#> declare
# @within
#   function core:tick/
#   function mob_manager:init/
#   function asset:mob/**
#   function asset_manager:mob/**
#declare tag AssetMob from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L30

#> declare
# @within
#   function core:tick/
#   function asset:**
#declare tag AllowProcessingCommonTag from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L36

#> declare
# @within
#   asset_manager:mob/triggers/death/*
#   api:damage/core/health_subtract/non-player
#   asset:mob/*/death/**
#declare tag Killer from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L50

#> declare
# @within
#   asset_manager:mob/triggers/
#   asset:mob/*/attack/**
#   asset_manager:artifact/triggers/**
#   asset:artifact/**
# from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L56
# from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L56
#declare tag Victim

#> declare
# @within
#   asset_manager:mob/triggers/
#   asset:mob/*/hurt/**
#   asset_manager:artifact/triggers/**
#   asset:artifact/**
# from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L62
# from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L55
#declare tag Attacker

#> declare
# @within
#   function asset_manager:mob/common_tag/*
#   function asset:**
    #declare tag AllowRideBannedVehicle   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L68
    #declare tag AlwaysBurn               from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L72
    #declare tag AlwaysInvisible          from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L73
    #declare tag AlwaysSlowFall           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L74
    #declare tag AntiBurn                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L71
    #declare tag AntiFallDamage           from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L69
    #declare tag AntiVoid                 from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L70
    #declare tag AutoKillWhenDiePassenger from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L76
    #declare tag AutoKillWhenDieVehicle   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L75
    #declare tag Drown                    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L78
    #declare tag Frozen                   from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L77

#> declare
# @within
#   asset_manager:artifact/triggers/**
#   asset:artifact/**
    #declare tag DisEquip from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L58
    #declare tag Equip    from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L57

#> declare
# @within asset:artifact/**
#alias entity selectorTemplate @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..n] from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L62
