
$modelname gibs/antlion_worker_gibs_frontlegr

$model antlion_worker_gibs_frontlegr antlion_worker_gibs_frontlegr

$lod 15
{
	replacemodel "antlion_worker_gibs_frontlegr.smd" "antlion_worker_gibs_frontlegr_lod1.smd"
	replacebone Antlion.LegL1_Bone antlion.Body_Bone
	replacebone Antlion.LegL2_Bone antlion.Body_Bone
	replacebone Antlion.LegL3_Bone antlion.Body_Bone
	nofacial
}
$lod 30
{
	replacemodel "antlion_worker_gibs_frontlegr.smd" "antlion_worker_gibs_frontlegr_lod2.smd"
	replacebone Antlion.LegL1_Bone antlion.Body_Bone
	replacebone Antlion.LegL2_Bone antlion.Body_Bone
	replacebone Antlion.LegL3_Bone antlion.Body_Bone
	nofacial
}
$shadowlod
{
	replacemodel "antlion_worker_gibs_frontlegr.smd" "antlion_worker_gibs_frontlegr_lod3.smd"
	replacebone Antlion.LegL1_Bone antlion.Body_Bone
	replacebone Antlion.LegL2_Bone antlion.Body_Bone
	replacebone Antlion.LegL3_Bone antlion.Body_Bone
	nofacial
}

$jigglebone "Antlion.LegL2_Bone"
{
	is_flexible
	{
		length 5
		tip_mass 10
		pitch_stiffness 700
		pitch_damping 8
		yaw_stiffness 700
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		angle_constraint 20
	}
}

$jigglebone "Antlion.LegL3_Bone"
{
	is_flexible
	{
		length 5
		tip_mass 10
		pitch_stiffness 700
		pitch_damping 8
		yaw_stiffness 700
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		angle_constraint 20
	}
}

$surfaceprop "alienflesh"

$contents "solid"

$illumposition -13.078 -10.634 21.358

$cdmaterials "models\antlion\"

$cbox 0 0 0 0 0 0

$bbox -16.565 -26.328 -2.751 37.833 0.172 45.468

$definebone "Antlion.Body_Bone" "" -0.067388 0.322127 23.18737 -16.862494 89.999982 91.000024 0 0 0 0 0 0
$definebone "Antlion.Back_Bone" "Antlion.Body_Bone" 3.880157 -0.980431 0.090609 0 44.099991 0 0 0 0 0 0 0
$definebone "Antlion.LegShoulder_R_Bone" "Antlion.Back_Bone" 13.389689 0.268266 -6.517195 74.842556 -22.684773 31.070524 0 0 0 0 0 0
$definebone "Antlion.LegL1_Bone" "Antlion.LegShoulder_R_Bone" 9.913783 0.000001 -0.000001 42.018658 -103.065424 81.352676 0 0 0 0 0 0
$definebone "Antlion.LegL2_Bone" "Antlion.LegL1_Bone" 21.01601 0.000003 -0.000001 0 -106.255375 -0.000001 0 0 0 0 0 0
$definebone "Antlion.LegL3_Bone" "Antlion.LegL2_Bone" 28.471622 -0.000004 0.000002 0 120.044645 0 0 0 0 0 0 0


$sequence "idle" {
	"antlion_worker_gibs_frontlegr_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "ragdoll" {
	"antlion_worker_gibs_frontlegr_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel antlion_worker_gibs_frontlegr_physics
// $collisionjoints antlion_worker_gibs_frontlegr_physics
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone "antlion.legl1_bone"
	$concave


	// $jointconstrain "Antlion.LegL2_Bone" x limit 0 0 0
	// $jointconstrain "Antlion.LegL2_Bone" y limit 0 0 0
	// $jointconstrain "Antlion.LegL2_Bone" z limit -55 55 0

	// $jointconstrain "Antlion.LegL3_Bone" x limit 0 0 0
	// $jointconstrain "Antlion.LegL3_Bone" y limit 0 0 0
	// $jointconstrain "Antlion.LegL3_Bone" z limit -50 50 0
}

$keyvalues
{
	prop_data 
	{
		"base" "Flesh.Base"
		physicsmode 3
	}
}
