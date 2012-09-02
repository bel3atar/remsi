# coding: utf-8
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Remsi::Application.initialize!

MATIERES = {
	'2IIR' => [[
			[
				"Économie",
				"Mathématiques Appliquées",
				"Anglais",
				"Droit",
				"Français"],
			[
				"Techniques de Programmation Avancée",
				"Conception des Systèmes d'Information",
				"TP Informatique",
				"Developpement Web"],
			[
				"Microprocesseurs",
				"Systèmes d'Exploitation"]
		], [ #S2
			[
				"Mathématiques Appliquées",
				"Anglais",
				"Comptabilité Générale",
				"Économie",
				"Français",
				"Droit"],
			[	
				"Techniques de Programmation Avancée",
				"Conception des Systèmes d'Information",
				"TP Informatique",
				"Bases de Données",
				"Développement Web",
				"Excel Avancé",
				"Mini Projet Informatique"],
			[
				"Systèmes d'Exploitation",
				"Microprocesseurs",
				"Mini Projet Systèmes d'Exploitation"]
	]],
	'5MG' => [[[
				"Anglais",
				"Business plan",
				"Communication Professionnelle",
				"ERP",
				"Gestion de Projet"],[
							"Développement Mobile",
							"Développement Web",
							"Data Mining",
							"Génie Logiciel",
							"Mini Projet",
							"Outils de Dév., d'Adm. et d'Opt. (ORACLE)",
							"Qualité et Normalisation",
							"Serveurs d'Application & J2EE Avancé",
							"Système Experts"]
		]],
	'5IRT' => [[[
			"Anglais",
			"Communication Professionnelle",
			"Développement Web",
			"Économie & Réglementation des Télécoms",
			"Gestion de Projet",
			"UML"],[
					"Administration Réseaux & Télécoms",
					"Antennes Avancées et Théorie des Radars",
					"Mini Projet",
					"Qualité de Service",
					"Réseaux NGN & MPLS",
					"Routage Avancé",
					"Sécurité Informatique",
					"3G",
					"VHDL"]
		]],
	'4IIR' => [[[
				"Recherche Opérationnelle",
				"Anglais",
				"Communication Professionnelle",
				"Marketing"],[
							"Administration Oracle",
							"Compilation",
							".NET",
							"Conception Orientée Objet",
							"Intelligence Artificielle",
							"Java",
							"SQL Server"],[
										"Les Couches Hautes OSI",
										"Administration Windows"]
		], [[
					"Anglais",
					"Communication Professionnelle",
					"Recherche Opérationnelle",
					"Droit des Affaires",
					"Management",
					"Marketing"],[
								"Compilation",
								"JAVA Avancé",
								"Conception O.O. & étude de cas",
								"SQL Server",
								"Unix avancé",
								"Oracle",
								"Mini Projet Informatique",
								"Bases de Données O.O.",
								".NET",
								"Intelligence Artificielle",
								"PHP/MYSQL",
								"XML",
								"Les Couches Hautes OSI"],[
											"Sécurité Informatique",
											"Administration Unix",
											"Administration Windows",
											"Sécurité des Systèmes d'Information"]
	]]
}