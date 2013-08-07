////////////////////////////////////////////////////////////////////////////////
/// HYPOSPRAY
////////////////////////////////////////////////////////////////////////////////

/obj/item/weapon/reagent_containers/hypospray
	name = "hypospray"
	desc = "The DeForest Medical Corporation hypospray is a sterile, air-needle autoinjector for rapid administration of drugs to patients."
	icon = 'icons/obj/syringe.dmi'
	item_state = "hypo"
	icon_state = "hypo"
	amount_per_transfer_from_this = 5
	volume = 30
	possible_transfer_amounts = null
	flags = FPRINT | TABLEPASS | OPENCONTAINER
	slot_flags = SLOT_BELT

/obj/item/weapon/reagent_containers/hypospray/attack_paw(mob/user as mob)
	return src.attack_hand(user)


/obj/item/weapon/reagent_containers/hypospray/New() //comment this to make hypos start off empty
	..()
	reagents.add_reagent("tricordrazine", 30)
	return

/obj/item/weapon/reagent_containers/hypospray/attack(mob/M as mob, mob/user as mob)
	if(!reagents.total_volume)
		user << "\red The hypospray is empty."
		return
	if (!( istype(M, /mob) ))
		return
	if (reagents.total_volume)
		user << "\blue You inject [M] with the hypospray."
		M << "\red You feel a tiny prick!"

		src.reagents.reaction(M, INGEST)
		if(M.reagents)

			var/list/injected = list()
			for(var/datum/reagent/R in src.reagents.reagent_list)
				injected += R.name

			var/trans = reagents.trans_to(M, amount_per_transfer_from_this)
			user << "\blue [trans] units injected.  [reagents.total_volume] units remaining in the hypospray."

			var/contained = english_list(injected)

			log_attack("<font color='red'>[user.name] ([user.ckey]) injected [M.name] ([M.ckey]) with [src.name], which had [contained] (INTENT: [uppertext(user.a_intent)])</font>")
			M.attack_log += text("\[[time_stamp()]\] <font color='orange'>Has been injected ([contained]) with [src.name] by [user.name] ([user.ckey])</font>")
			user.attack_log += text("\[[time_stamp()]\] <font color='red'>Used the [src.name] to inject [M.name] ([M.ckey]) with [contained]</font>")

	return




	////////////////////////////////////////////////////
	//////////THE AUTOINJECTOR/////////////////////
	//////////////////////////////////////////
/obj/item/weapon/reagent_containers/hypospray/autoinjector
	name = "autoinjector"
	desc = "A rapid and safe way to administer small amounts of drugs by untrained or trained personnel."
	icon_state = "autoinjector"
	item_state = "autoinjector"
	amount_per_transfer_from_this = 5
	volume = 15

/obj/item/weapon/reagent_containers/hypospray/autoinjector/New()
	..()
	reagents.remove_reagent("tricordrazine", 30)
	reagents.add_reagent("inaprovaline", 5)
	update_icon()
	return

/obj/item/weapon/reagent_containers/hypospray/autoinjector/attack(mob/M as mob, mob/user as mob)
	..()
	update_icon()
	return

/obj/item/weapon/reagent_containers/hypospray/autoinjector/update_icon()
	if(reagents.total_volume > 0)
		icon_state = "[initial(icon_state)]1"
	else
		icon_state = "[initial(icon_state)]0"

/obj/item/weapon/reagent_containers/hypospray/autoinjector/examine()
	..()
	if(reagents && reagents.reagent_list.len)
		for(var/datum/reagent/R in reagents.reagent_list)
			usr << "\blue It currently has [R.volume] units of [R.name] stored."
	else
		usr << "\blue It is currently empty."








//Tramadol autoinjector
/obj/item/weapon/reagent_containers/hypospray/autoinjector/tramadol
	name = "Med-X"
	desc = "A rapid and safe way to administer an analgesic pain reliever for untrained personnel. Patented and developed by Saris Industries."
	icon_state = "medx"
	item_state = "autoinjector"
	amount_per_transfer_from_this = 5
	volume = 15

/obj/item/weapon/reagent_containers/hypospray/autoinjector/tramadol/New()
	..()
	reagents.remove_reagent("tricordrazine", 30)//Autoinjectors don't need this shit.
	reagents.remove_reagent("inaprovaline", 5)//Med-X doesn't need THIS shit/
	reagents.add_reagent("tramadol", 5)//There we go. The desired stimpak chemical.
	update_icon()
	return


//Dexalin autoinjector
/obj/item/weapon/reagent_containers/hypospray/autoinjector/dexalin
	name = "resusitation autoinjector"
	desc = "A rapid and safe way to administer an emergency revival agent for untrained personnel. Patented and developed by Saris Industries."
	icon_state = "dexalin"
	item_state = "autoinjector"
	amount_per_transfer_from_this = 5
	volume = 15

/obj/item/weapon/reagent_containers/hypospray/autoinjector/dexalin/New()
	..()
	reagents.remove_reagent("tricordrazine", 30)//Autoinjectors don't need this shit.
	reagents.remove_reagent("inaprovaline", 5)//Our special autoinjectors doesn't need THIS shit.
	reagents.add_reagent("dexalinp", 5)//There we go. The desired stimpak chemical.
	update_icon()
	return


//Hyperzine Autoinjector
/obj/item/weapon/reagent_containers/hypospray/autoinjector/hyperzine
	name = "EVAid autoinjector"
	desc = "A rapid injector for stimulants designed to assist the user in EVA work. Patented and developed by Saris Industries."
	icon_state = "evaid"
	item_state = "autoinjector"
	amount_per_transfer_from_this = 5
	volume = 15

/obj/item/weapon/reagent_containers/hypospray/autoinjector/hyperzine/New()
	..()
	reagents.remove_reagent("tricordrazine", 30)//Autoinjectors don't need this shit.
	reagents.remove_reagent("inaprovaline", 5)//Med-X doesn't need THIS shit/
	reagents.add_reagent("hyperzine", 5)//There we go. The desired stimpak chemical.
	update_icon()
	return


//Dylovene Autoinjector
/obj/item/weapon/reagent_containers/hypospray/autoinjector/dylovene
	name = "purge autoinjector"
	desc = "An autoinjector filled with reactants designed to flush non-natural chemicals from the body. Patented and developed by Saris Industries."
	icon_state = "antitoxins"
	item_state = "autoinjector"
	amount_per_transfer_from_this = 5
	volume = 15

/obj/item/weapon/reagent_containers/hypospray/autoinjector/dylovene/New()
	..()
	reagents.remove_reagent("tricordrazine", 30)//Autoinjectors don't need this shit.
	reagents.remove_reagent("inaprovaline", 5)//Med-X doesn't need THIS shit/
	reagents.add_reagent("anti_toxin", 5)//There we go. The desired stimpak chemical.
	update_icon()
	return


//Ryetalyn Autoinjector
/obj/item/weapon/reagent_containers/hypospray/autoinjector/ryetalyn
	name = "RGene autoinjector"
	desc = "A rapid and safe way to administer genetic stability for untrained personnel. Patented and developed by Saris Industries."
	icon_state = "autoinjector"
	item_state = "autoinjector"
	amount_per_transfer_from_this = 5
	volume = 15

/obj/item/weapon/reagent_containers/hypospray/autoinjector/ryetalyn/New()
	..()
	reagents.remove_reagent("tricordrazine", 30)//Autoinjectors don't need this shit.
	reagents.remove_reagent("inaprovaline", 5)//Med-X doesn't need THIS shit.
	reagents.add_reagent("ryetalyn", 5)//There we go. The desired stimpak chemical.
	update_icon()
	return


//Tricordrazine Autoinjector
/obj/item/weapon/reagent_containers/hypospray/autoinjector/tricordrazine
	name = "stimpak"
	desc = "A rapid and safe way to administer omnipotent healing medication for untrained personnel. Patented and developed by Saris Industries."
	icon_state = "stimpak"
	item_state = "autoinjector"
	amount_per_transfer_from_this = 5
	volume = 30//No, you don't need to check the volumes of the rest of the autoinjectors after seeing the variable amount for this one.

/obj/item/weapon/reagent_containers/hypospray/autoinjector/tricordrazine/New()
	..()
	reagents.remove_reagent("inaprovaline", 5)//..We actually do need this one. Kinda the component of the autoinjector.
	update_icon()
	return

