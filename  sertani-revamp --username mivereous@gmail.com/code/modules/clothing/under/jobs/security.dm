/*
 * Contains:
 *		Security
 *		Detective
 *		Head of Security
 *		Grand Protector
 */

/*
 * Security
 */
/obj/item/clothing/under/rank/warden
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for more robust protection. It has the word \"Warden\" written on the shoulders."
	name = "warden's jumpsuit"
	icon_state = "warden"
	item_state = "r_suit"
	color = "warden"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	flags = FPRINT | TABLEPASS
	siemens_coefficient = 0.9

/obj/item/clothing/under/rank/security
	name = "security officer's jumpsuit"
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for robust protection."
	icon_state = "security"
	item_state = "r_suit"
	color = "secred"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	flags = FPRINT | TABLEPASS
	siemens_coefficient = 0.9

/obj/item/clothing/under/rank/dispatch
	name = "dispatcher's uniform"
	desc = "A dress shirt and khakis with a security patch sewn on."
	icon_state = "dispatch"
	item_state = "dispatch"
	color = "dispatch"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	flags = FPRINT | TABLEPASS
	siemens_coefficient = 0.9

/obj/item/clothing/under/rank/security2
	name = "security officer's jumpsuit"
	desc = "It's made of a slightly sturdier material, to allow for robust protection."
	icon_state = "redshirt2"
	item_state = "r_suit"
	color = "redshirt2"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	flags = FPRINT | TABLEPASS
	siemens_coefficient = 0.9

/obj/item/clothing/under/rank/security3
	name = "security officer's jumpsuit"
	desc = "It's made of a slightly sturdier material, to allow for robust protection."
	icon_state = "secalt"
	item_state = "secalt"
	color = "secalt"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	flags = FPRINT | TABLEPASS
	siemens_coefficient = 0.9

/obj/item/clothing/under/rank/protector
	name = "protector's attire"
	desc = "A security officer's uniform, slightly modified and redesigned. It designates the wearer as the station's elite bodyguard."
	icon_state = "protector"
	item_state = "protector"
	color = "protector"
	armor = list(melee = 10, bullet = 5, laser = 5,energy = 5, bomb = 0, bio = 0, rad = 0)
	flags = FPRINT | TABLEPASS
	siemens_coefficient = 0.9

/*
 * Detective
 */
/obj/item/clothing/under/det
	name = "hard-worn suit"
	desc = "Someone who wears this means business."
	icon_state = "detective"
	item_state = "det"
	color = "detective"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	flags = FPRINT | TABLEPASS
	siemens_coefficient = 0.9


/obj/item/clothing/head/det_hat
	name = "hat"
	desc = "Someone who wears this will look very smart."
	icon_state = "detective"
	allowed = list(/obj/item/weapon/reagent_containers/food/snacks/candy_corn, /obj/item/weapon/pen)
	armor = list(melee = 50, bullet = 5, laser = 25,energy = 10, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9

/obj/item/clothing/head/servfedora
	name = "classy fedora"
	desc = "'One who would wear a fedora, would wear the mantle of a god.'"
	icon_state = "servfedora"
	item_state = "servfedora"
	armor = list(melee = 50, bullet = 5, laser = 25, energy = 80, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9

/*
 * Head of Security
 */
/obj/item/clothing/under/rank/head_of_security
	desc = "It's a jumpsuit worn by those few with the dedication to achieve the position of \"Head of Security\". It has additional armor to protect the wearer."
	name = "head of security's jumpsuit"
	icon_state = "hos"
	item_state = "r_suit"
	color = "hosred"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	flags = FPRINT | TABLEPASS
	siemens_coefficient = 0.8


/obj/item/clothing/head/helmet/HoS
	name = "Head of Security Hat"
	desc = "The hat of the Head of Security. For showing the officers who's in charge."
	icon_state = "hoscap"
	flags = FPRINT | TABLEPASS | HEADCOVERSEYES
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 10, bomb = 25, bio = 10, rad = 0)
	flags_inv = 0
	flags_inv = HIDEEARS
	siemens_coefficient = 0.8


/obj/item/clothing/suit/armor/hos
	name = "armored coat"
	desc = "A greatcoat enchanced with a special alloy for some protection and style."
	icon_state = "hos"
	item_state = "hos"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(melee = 65, bullet = 30, laser = 50, energy = 10, bomb = 25, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	siemens_coefficient = 0.6


/obj/item/clothing/head/helmet/HoS/dermal
	name = "Dermal Armour Patch"
	desc = "You're not quite sure how you manage to take it on and off, but it implants nicely in your head."
	icon_state = "dermal"
	item_state = "dermal"
	siemens_coefficient = 0.6

//Jensen cosplay gear
/obj/item/clothing/under/rank/head_of_security/jensen
	desc = "You never asked for anything that stylish."
	name = "head of security's jumpsuit"
	icon_state = "jensen"
	item_state = "jensen"
	color = "jensen"
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/hos/jensen
	name = "armored trenchcoat"
	desc = "A trenchcoat augmented with a special alloy for some protection and style."
	icon_state = "jensencoat"
	item_state = "jensencoat"
	flags_inv = 0
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/hos/jensen/aryus
	name = "tattered trenchcoat"
	desc = "A trenchcoat riddled with bulletholes, tears, burn marks, and blast points. A conduit of character to say the least."
	icon_state = "jensencoat"
	item_state = "aryuscoat"
	armor = list(melee = 45, bullet = 20, laser = 30, energy = 5, bomb = 10, bio = 0, rad = 0)
	siemens_coefficient = 0.6