# DEATH EFFECTS
#  Purpose:
#    Displays the death effects for players when they die.
#  End Effect:
#    Pops the player into blood particles and plays a sound accordingly. Also plays a global death cue.
#  Called by:
#    game/logic/death
#  Additional notes: 
#    We play global sounds at 1000 blocks high to force a mono effect rather than a stereo one.

#BLOOD EFFECT
particle minecraft:block minecraft:red_mushroom_block ~ ~1 ~ 0 0 0 1 50

#SOUND EFFECTS
playsound minecraft:entity.player.attack.crit master @a[team=mas.hunter] ~ ~1 ~ 2 0.7
playsound minecraft:block.end_gateway.spawn master @a[tag=mas.player] ~ 1000 ~ 100 1.4