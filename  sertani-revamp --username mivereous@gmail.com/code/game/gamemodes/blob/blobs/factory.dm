/mob/living/simple_animal/hostile/zombie
	name = "crewmember(?)"
	desc = "You think this is someone you know... You can't really tell with all the wounds though."
	icon_state = "zombie"
	icon_living = "zombie"
	icon_dead = "zombie_dead"
	icon_gib = "zombie_dead"
	speak_chance = 25
	speak = list("Mrrrm...")
	speak_emote = list("moans")
	emote_hear = list("moans loudly", "slurs unitelligibly", "scrapes the floor")
	emote_see = list("stops and stares ahead for a moment", "stumbles slightly", "limps awkwardly")
	turns_per_move = 1
	response_help = "pokes the"
	response_disarm = "shoves the"
	response_harm = "smacks the"
	speed = 2
	stop_automated_movement_when_pulled = 0
	maxHealth = "200"
	health = "170"
	harm_intent_damage = 10
	melee_damage_lower = 15
	melee_damage_upper = 30
	attacktext = "grabs"
	a_intent = "harm"
	attack_sound = 'sound/weapons/bite.ogg'

/mob/living/simple_animal/hostile/zombie/ListTargets()
	var/list/targets = list()
	for(var/mob/living/carbon/human/H in view(src,10))
		targets += H
	return targets

/mob/living/simple_animal/hostile/zombie/FindTarget()
	. = ..()
	if(.)
		emote("moans excitedly")

/mob/living/simple_animal/hostile/snake/AttackingTarget()
	. =..()
	var/mob/living/L = .
	if(istype(L))
		L.apply_damage(rand(3,12), TOX)
		L.Weaken(3)
		L.visible_message("<span class='danger'>\the [src] drags down \the [L]!</span>")


/obj/effect/blob/factory
	name = "porous blob"
	icon = 'icons/mob/blob.dmi'
	icon_state = "blob_factory"
	health = 100
	brute_resist = 1
	fire_resist = 2
	var/list/spores = list()
	var/max_spores = 4


	update_icon()
		if(health <= 0)
			playsound(src.loc, 'sound/effects/splat.ogg', 50, 1)
			del(src)
			return
		return


	run_action()
		if(spores.len >= max_spores)	return 0
		new/mob/living/simple_animal/hostile/blobspore(src.loc, src)
		return 1


/mob/living/simple_animal/hostile/blobspore
	name = "blob"
	desc = "Some blob thing."
	icon = 'icons/mob/critter.dmi'
	icon_state = "blobsquiggle"
	icon_living = "blobsquiggle"
	pass_flags = PASSBLOB
	health = 20
	maxHealth = 20
	melee_damage_lower = 4
	melee_damage_upper = 8
	attacktext = "hits"
	attack_sound = 'sound/weapons/genhit1.ogg'
	var/obj/effect/blob/factory/factory = null
	faction = "blob"
	min_oxy = 0
	max_oxy = 0
	min_tox = 0
	max_tox = 0
	min_co2 = 0
	max_co2 = 0
	min_n2 = 0
	max_n2 = 0
	minbodytemp = 0
	maxbodytemp = 360


	New(loc, var/obj/effect/blob/factory/linked_node)
		..()
		if(istype(linked_node))
			factory = linked_node
			factory.spores += src
		..(loc)
		return
	Die()
		..()
		if(factory)
			factory.spores -= src
		..()
		del(src)



