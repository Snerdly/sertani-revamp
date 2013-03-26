/obj/item/weapon/melee/chainofcommand
	name = "chain of command"
	desc = "A tool used by great men to placate the frothing masses."
	icon_state = "chain"
	item_state = "chain"
	flags = FPRINT | TABLEPASS | CONDUCT
	slot_flags = SLOT_BELT
	force = 10
	throwforce = 7
	w_class = 3
	origin_tech = "combat=4"
	attack_verb = list("flogged", "whipped", "lashed", "disciplined")

	suicide_act(mob/user)
		viewers(user) << "\red <b>[user] is strangling \himself with the [src.name]! It looks like \he's trying to commit suicide.</b>"
		return (OXYLOSS)

/obj/item/weapon/melee/leatherwhip
	name = "leather whip"
	desc = "A dakr brown whip crafted from elegantly tanned leather. It looks like it would sting."
	icon_state = "whip"
	item_state = "whip"
	flags = FPRINT | TABLEPASS
	slot_flags = SLOT_BELT
	force = 1
	throwforce = 3
	w_class = 3
	origin_tech = "material=3"
	attack_verb = list("flogged", "whipped", "lashed", "disciplined", "licked", "struck", "punished" )

	suicide_act(mob/user)
		viewers(user) << "\red <b>[user] is choking THE SHIT out of \himself with the [src.name]! It looks like \he's trying to commit suicide.</b>"
		return (OXYLOSS)